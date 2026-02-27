FastMoveTooltip = LibStub("AceAddon-3.0"):NewAddon("FastMoveTooltip", "AceConsole-3.0")

local L = LibStub("AceLocale-3.0"):GetLocale("FastMoveTooltip")

FastMoveTooltip.dragFrame = CreateFrame("Frame", "FastMoveTooltipDragFrame", UIParent)

-- Events
FastMoveTooltip.dragFrame:RegisterEvent("PLAYER_LOGIN")
FastMoveTooltip.dragFrame:SetScript("OnEvent", function(self, event)
  if event == "PLAYER_LOGIN" then
    FastMoveTooltip:init()
    self:UnregisterEvent("PLAYER_LOGIN")
  end
end)

-- addon initialization
function FastMoveTooltip:init()
  local defaults = {
    char = {
      lock = false,
      point = "CENTER",
      relativePoint = "CENTER",
      x = 0,
      y = 0,
    },
  }

  FastMoveTooltip.db = LibStub("AceDB-3.0"):New("FastMoveTooltipDB", defaults)

  FastMoveTooltip:createDragFrame()
  FastMoveTooltip:configureDragAndDrop()

  -- Override the tooltip anchor whenever the game sets a default anchor.
  -- This is the most reliable way to keep the position after reload/relog.
  hooksecurefunc("GameTooltip_SetDefaultAnchor", function(tooltip, parent)
    FastMoveTooltip:handleTooltip(tooltip, parent)
  end)
end

-- Set Tooltip position (only when locked)
function FastMoveTooltip:handleTooltip(tooltip, parent)
  if not FastMoveTooltip.db or not FastMoveTooltip.db.char then return end
  if not FastMoveTooltip.db.char.lock then return end

  -- We anchor the tooltip to our drag frame. The drag frame itself is anchored
  -- to UIParent with saved point/offsets.
  tooltip:ClearAllPoints()
  tooltip:SetPoint("BOTTOMRIGHT", FastMoveTooltip.dragFrame, "BOTTOMRIGHT", 0, 0)
end

-- Create the drag frame
function FastMoveTooltip:createDragFrame()
  local df = FastMoveTooltip.dragFrame

  df:SetSize(175, 100)
  df:ClearAllPoints()
  df:SetPoint(
    FastMoveTooltip.db.char.point or "CENTER",
    UIParent,
    FastMoveTooltip.db.char.relativePoint or "CENTER",
    FastMoveTooltip.db.char.x or 0,
    FastMoveTooltip.db.char.y or 0
  )

  df.texture = df.texture or df:CreateTexture(nil, "BACKGROUND")
  df.texture:SetColorTexture(0, 0, 0, 0.5)
  df.texture:SetAllPoints()

  df.text = df.text or df:CreateFontString(nil, "ARTWORK")
  df.text:SetFont("Fonts\\ARIALN.ttf", 12)
  df.text:SetShadowColor(0, 0, 0, 0.5)
  df.text:SetShadowOffset(1, -1)
  df.text:SetPoint("CENTER")
  df.text:SetTextColor(1, 1, 1, 1)
  df.text:SetText(
    (L["MOVE_FRAME"] or "Move this frame to move the tooltip") .. "\n" ..
      (L["RIGHT_CLICK_LOCK"] or "Right-click to lock") .. "\n\n" ..
      (L["ANCHOR_HINT"] or "Anchor is the bottom-right corner")
  )

  if FastMoveTooltip.db.char.lock then
    df:Hide()
  else
    df:Show()
  end
end

-- Configure drag and drop
function FastMoveTooltip:configureDragAndDrop()
  local df = FastMoveTooltip.dragFrame

  df:RegisterForDrag("LeftButton")
  df:SetClampedToScreen(true)
  df:EnableMouse(true)
  df:SetMovable(true)

  df:SetScript("OnDragStart", function()
    df:StartMoving()
  end)

  df:SetScript("OnDragStop", function()
    df:StopMovingOrSizing()

    -- Save frame anchor/offsets in a stable format
    local point, relativeTo, relativePoint, xOfs, yOfs = df:GetPoint(1)
    FastMoveTooltip.db.char.point = point or "CENTER"
    FastMoveTooltip.db.char.relativePoint = relativePoint or "CENTER"
    FastMoveTooltip.db.char.x = xOfs or 0
    FastMoveTooltip.db.char.y = yOfs or 0
  end)

  -- Right-click toggles lock
  df:SetScript("OnMouseDown", function(self, button)
    if button == "RightButton" then
      FastMoveTooltip:lock()
    end
  end)
end

-- Show dragFrame and unlock position
function FastMoveTooltip:unlock()
  FastMoveTooltip.db.char.lock = false
  FastMoveTooltip.dragFrame:Show()
  FastMoveTooltip:Print(L["MSG_UNLOCKED"] or "Tooltip unlocked. Drag the frame, then right-click to lock.")
end

-- Reset position
function FastMoveTooltip:reset()
  FastMoveTooltip.db.char.lock = false
  FastMoveTooltip.db.char.point = "CENTER"
  FastMoveTooltip.db.char.relativePoint = "CENTER"
  FastMoveTooltip.db.char.x = 0
  FastMoveTooltip.db.char.y = 0

  FastMoveTooltip.dragFrame:ClearAllPoints()
  FastMoveTooltip.dragFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
  FastMoveTooltip.dragFrame:Show()

  FastMoveTooltip:Print(L["MSG_RESET"] or "Tooltip position reset.")
end

-- Hide dragFrame and keep tooltip position
function FastMoveTooltip:lock()
  FastMoveTooltip.db.char.lock = true
  FastMoveTooltip.dragFrame:Hide()
  FastMoveTooltip:Print(L["MSG_SAVED"] or "Tooltip position saved. Use /fmt unlock to set a new position.")
end

-- Chat commands
local options = {
  name = "FastMoveTooltip",
  type = "group",
  args = {
    description = {
      type = "description",
      name = L["OPT_DESC"] or "Move the tooltip by unlocking the frame, dragging it, and locking it again.",
      order = 0,
    },
    lock = {
      type = "toggle",
      name = L["OPT_LOCK_NAME"] or "Lock tooltip position",
      desc = L["OPT_LOCK_DESC"] or "When enabled, the mover frame is hidden and the tooltip is anchored at the saved position.",
      order = 1,
      get = function()
        return (FastMoveTooltip.db and FastMoveTooltip.db.char and FastMoveTooltip.db.char.lock) and true or false
      end,
      set = function(_, val)
        if not (FastMoveTooltip.db and FastMoveTooltip.db.char) then return end
        if val then
          FastMoveTooltip:lock()
        else
          FastMoveTooltip:unlock()
        end
      end,
      width = "full",
    },
    unlock = {
      type = "execute",
      order = 2,
      name = L["CMD_UNLOCK_NAME"] or "Unlock",
      desc = L["CMD_UNLOCK_DESC"] or "Unlocks the tooltip position so you can move it",
      func = function() FastMoveTooltip:unlock() end,
    },
    reset = {
      type = "execute",
      order = 3,
      name = L["CMD_RESET_NAME"] or "Reset",
      desc = L["CMD_RESET_DESC"] or "Resets the tooltip position to default",
      func = function() FastMoveTooltip:reset() end,
    },
  },
}

LibStub("AceConfig-3.0"):RegisterOptionsTable("FastMoveTooltip", options, { "movetooltiplite", "fmt" })

-- Blizzard (ESC -> Options -> AddOns) panel
local ACD = LibStub("AceConfigDialog-3.0", true)
if ACD then
  ACD:AddToBlizOptions("FastMoveTooltip", "FastMoveTooltip")
end
