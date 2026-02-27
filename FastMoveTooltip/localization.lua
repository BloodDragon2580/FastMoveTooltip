local AceLocale = LibStub("AceLocale-3.0")

-- enUS is the fallback
local L = AceLocale:NewLocale("FastMoveTooltip", "enUS", true)
if L then
  L["MOVE_FRAME"] = "Move this frame to move the tooltip"
  L["RIGHT_CLICK_LOCK"] = "Right-click to lock"
  L["ANCHOR_HINT"] = "Anchor is the bottom-right corner"

  L["CMD_UNLOCK_NAME"] = "Unlock"
  L["CMD_UNLOCK_DESC"] = "Unlocks the tooltip position so you can move it"
  L["CMD_RESET_NAME"] = "Reset"
  L["CMD_RESET_DESC"] = "Resets the tooltip position to default"

  L["MSG_SAVED"] = "Tooltip position saved. Use /fmt unlock to set a new position."
  L["MSG_UNLOCKED"] = "Tooltip unlocked. Drag the frame, then right-click to lock."
  L["MSG_RESET"] = "Tooltip position reset."

  L["OPT_DESC"] = "Unlock the mover frame to reposition the tooltip. Drag it where you want, then lock it to save."
  L["OPT_LOCK_NAME"] = "Lock tooltip position"
  L["OPT_LOCK_DESC"] = "Hide the mover frame and keep the tooltip anchored at the saved position."

end

L = AceLocale:NewLocale("FastMoveTooltip", "deDE")
if L then
  L["MOVE_FRAME"] = "Ziehe diesen Rahmen, um den Tooltip zu verschieben"
  L["RIGHT_CLICK_LOCK"] = "Rechtsklick zum Sperren"
  L["ANCHOR_HINT"] = "Anker ist die rechte untere Ecke"

  L["CMD_UNLOCK_NAME"] = "Entsperren"
  L["CMD_UNLOCK_DESC"] = "Entsperrt die Tooltip-Position, damit du sie verschieben kannst"
  L["CMD_RESET_NAME"] = "Zurücksetzen"
  L["CMD_RESET_DESC"] = "Setzt die Tooltip-Position auf Standard zurück"

  L["MSG_SAVED"] = "Tooltip-Position gespeichert. Nutze /fmt unlock, um eine neue Position zu setzen."
  L["MSG_UNLOCKED"] = "Tooltip entsperrt. Rahmen ziehen und dann per Rechtsklick sperren."
  L["MSG_RESET"] = "Tooltip-Position zurückgesetzt."

  L["OPT_DESC"] = "Entsperre den Rahmen, um den Tooltip zu verschieben. Ziehe ihn an die gewünschte Stelle und sperre ihn anschließend, um zu speichern."
  L["OPT_LOCK_NAME"] = "Tooltip-Position sperren"
  L["OPT_LOCK_DESC"] = "Blendet den Verschiebe-Rahmen aus und verankert den Tooltip an der gespeicherten Position."

end

L = AceLocale:NewLocale("FastMoveTooltip", "frFR")
if L then
  L["MOVE_FRAME"] = "Déplacez ce cadre pour déplacer l'infobulle"
  L["RIGHT_CLICK_LOCK"] = "Clic droit pour verrouiller"
  L["ANCHOR_HINT"] = "L'ancre est le coin inférieur droit"

  L["CMD_UNLOCK_NAME"] = "Déverrouiller"
  L["CMD_UNLOCK_DESC"] = "Déverrouille la position de l'infobulle pour pouvoir la déplacer"
  L["CMD_RESET_NAME"] = "Réinitialiser"
  L["CMD_RESET_DESC"] = "Réinitialise la position de l'infobulle par défaut"

  L["MSG_SAVED"] = "Position enregistrée. Utilisez /fmt unlock pour définir une nouvelle position."
  L["MSG_UNLOCKED"] = "Infobulle déverrouillée. Déplacez le cadre puis clic droit pour verrouiller."
  L["MSG_RESET"] = "Position réinitialisée."

  L["OPT_DESC"] = "Déverrouillez le cadre de déplacement pour repositionner l'infobulle. Faites-le glisser, puis verrouillez pour enregistrer."
  L["OPT_LOCK_NAME"] = "Verrouiller la position de l'infobulle"
  L["OPT_LOCK_DESC"] = "Masque le cadre de déplacement et ancre l'infobulle à la position enregistrée."

end

L = AceLocale:NewLocale("FastMoveTooltip", "esES")
if L then
  L["MOVE_FRAME"] = "Mueve este marco para mover el tooltip"
  L["RIGHT_CLICK_LOCK"] = "Clic derecho para bloquear"
  L["ANCHOR_HINT"] = "El anclaje es la esquina inferior derecha"

  L["CMD_UNLOCK_NAME"] = "Desbloquear"
  L["CMD_UNLOCK_DESC"] = "Desbloquea la posición del tooltip para poder moverlo"
  L["CMD_RESET_NAME"] = "Restablecer"
  L["CMD_RESET_DESC"] = "Restablece la posición del tooltip por defecto"

  L["MSG_SAVED"] = "Posición guardada. Usa /fmt unlock para fijar una nueva posición."
  L["MSG_UNLOCKED"] = "Tooltip desbloqueado. Arrastra el marco y luego haz clic derecho para bloquear."
  L["MSG_RESET"] = "Posición restablecida."

  L["OPT_DESC"] = "Desbloquea el marco para recolocar el tooltip. Arrástralo a donde quieras y luego bloquéalo para guardar."
  L["OPT_LOCK_NAME"] = "Bloquear posición del tooltip"
  L["OPT_LOCK_DESC"] = "Oculta el marco de movimiento y mantiene el tooltip anclado en la posición guardada."

end

L = AceLocale:NewLocale("FastMoveTooltip", "esMX")
if L then
  L["MOVE_FRAME"] = "Mueve este marco para mover el tooltip"
  L["RIGHT_CLICK_LOCK"] = "Clic derecho para bloquear"
  L["ANCHOR_HINT"] = "El anclaje es la esquina inferior derecha"

  L["CMD_UNLOCK_NAME"] = "Desbloquear"
  L["CMD_UNLOCK_DESC"] = "Desbloquea la posición del tooltip para poder moverlo"
  L["CMD_RESET_NAME"] = "Restablecer"
  L["CMD_RESET_DESC"] = "Restablece la posición del tooltip por defecto"

  L["MSG_SAVED"] = "Posición guardada. Usa /fmt unlock para fijar una nueva posición."
  L["MSG_UNLOCKED"] = "Tooltip desbloqueado. Arrastra el marco y luego haz clic derecho para bloquear."
  L["MSG_RESET"] = "Posición restablecida."
end

L = AceLocale:NewLocale("FastMoveTooltip", "itIT")
if L then
  L["MOVE_FRAME"] = "Sposta questo riquadro per spostare il tooltip"
  L["RIGHT_CLICK_LOCK"] = "Tasto destro per bloccare"
  L["ANCHOR_HINT"] = "L'ancora è l'angolo in basso a destra"

  L["CMD_UNLOCK_NAME"] = "Sblocca"
  L["CMD_UNLOCK_DESC"] = "Sblocca la posizione del tooltip per poterlo spostare"
  L["CMD_RESET_NAME"] = "Reimposta"
  L["CMD_RESET_DESC"] = "Reimposta la posizione del tooltip predefinita"

  L["MSG_SAVED"] = "Posizione salvata. Usa /fmt unlock per impostare una nuova posizione."
  L["MSG_UNLOCKED"] = "Tooltip sbloccato. Trascina il riquadro e poi tasto destro per bloccare."
  L["MSG_RESET"] = "Posizione reimpostata."

  L["OPT_DESC"] = "Sblocca il riquadro per riposizionare il tooltip. Trascinalo dove vuoi e poi bloccalo per salvare."
  L["OPT_LOCK_NAME"] = "Blocca posizione tooltip"
  L["OPT_LOCK_DESC"] = "Nasconde il riquadro di spostamento e mantiene il tooltip ancorato alla posizione salvata."

end

L = AceLocale:NewLocale("FastMoveTooltip", "ptBR")
if L then
  L["MOVE_FRAME"] = "Mova este quadro para mover o tooltip"
  L["RIGHT_CLICK_LOCK"] = "Clique com o botão direito para travar"
  L["ANCHOR_HINT"] = "A âncora é o canto inferior direito"

  L["CMD_UNLOCK_NAME"] = "Destravar"
  L["CMD_UNLOCK_DESC"] = "Destrava a posição do tooltip para você poder mover"
  L["CMD_RESET_NAME"] = "Redefinir"
  L["CMD_RESET_DESC"] = "Redefine a posição padrão do tooltip"

  L["MSG_SAVED"] = "Posição salva. Use /fmt unlock para definir uma nova posição."
  L["MSG_UNLOCKED"] = "Tooltip destravado. Arraste o quadro e depois clique com o botão direito para travar."
  L["MSG_RESET"] = "Posição redefinida."

  L["OPT_DESC"] = "Desbloqueie o quadro para reposicionar a dica. Arraste para onde quiser e depois bloqueie para salvar."
  L["OPT_LOCK_NAME"] = "Bloquear posição da dica"
  L["OPT_LOCK_DESC"] = "Oculta o quadro de movimento e mantém a dica ancorada na posição salva."

end

L = AceLocale:NewLocale("FastMoveTooltip", "ruRU")
if L then
  L["MOVE_FRAME"] = "Перетащите эту рамку, чтобы переместить подсказку"
  L["RIGHT_CLICK_LOCK"] = "Правый клик — закрепить"
  L["ANCHOR_HINT"] = "Якорь — правый нижний угол"

  L["CMD_UNLOCK_NAME"] = "Разблокировать"
  L["CMD_UNLOCK_DESC"] = "Разблокирует позицию подсказки, чтобы её можно было перемещать"
  L["CMD_RESET_NAME"] = "Сбросить"
  L["CMD_RESET_DESC"] = "Сбрасывает позицию подсказки на стандартную"

  L["MSG_SAVED"] = "Позиция сохранена. Используйте /fmt unlock, чтобы задать новую позицию."
  L["MSG_UNLOCKED"] = "Подсказка разблокирована. Перетащите рамку, затем правым кликом закрепите."
  L["MSG_RESET"] = "Позиция сброшена."

  L["OPT_DESC"] = "Разблокируйте рамку, чтобы переместить подсказку. Перетащите её куда нужно и затем заблокируйте, чтобы сохранить."
  L["OPT_LOCK_NAME"] = "Закрепить позицию подсказки"
  L["OPT_LOCK_DESC"] = "Скрывает рамку перемещения и удерживает подсказку в сохранённой позиции."

end

L = AceLocale:NewLocale("FastMoveTooltip", "koKR")
if L then
  L["MOVE_FRAME"] = "이 프레임을 옮기면 툴팁을 옮길 수 있습니다"
  L["RIGHT_CLICK_LOCK"] = "오른쪽 클릭으로 잠금"
  L["ANCHOR_HINT"] = "앵커는 오른쪽 아래 모서리입니다"

  L["CMD_UNLOCK_NAME"] = "잠금 해제"
  L["CMD_UNLOCK_DESC"] = "툴팁 위치 잠금을 해제하여 옮길 수 있게 합니다"
  L["CMD_RESET_NAME"] = "초기화"
  L["CMD_RESET_DESC"] = "툴팁 위치를 기본값으로 초기화합니다"

  L["MSG_SAVED"] = "툴팁 위치가 저장되었습니다. /fmt unlock으로 새 위치를 설정하세요."
  L["MSG_UNLOCKED"] = "툴팁 잠금이 해제되었습니다. 프레임을 드래그하고 오른쪽 클릭으로 잠금하세요."
  L["MSG_RESET"] = "툴팁 위치가 초기화되었습니다."

  L["OPT_DESC"] = "프레임 잠금을 해제해 툴팁 위치를 옮길 수 있습니다. 원하는 곳으로 드래그한 뒤 잠가서 저장하세요."
  L["OPT_LOCK_NAME"] = "툴팁 위치 잠금"
  L["OPT_LOCK_DESC"] = "이동 프레임을 숨기고 저장된 위치에 툴팁을 고정합니다."

end

L = AceLocale:NewLocale("FastMoveTooltip", "zhCN")
if L then
  L["MOVE_FRAME"] = "移动此框以移动提示框"
  L["RIGHT_CLICK_LOCK"] = "右键锁定"
  L["ANCHOR_HINT"] = "锚点为右下角"

  L["CMD_UNLOCK_NAME"] = "解锁"
  L["CMD_UNLOCK_DESC"] = "解锁提示框位置，以便移动"
  L["CMD_RESET_NAME"] = "重置"
  L["CMD_RESET_DESC"] = "将提示框位置重置为默认"

  L["MSG_SAVED"] = "位置已保存。使用 /fmt unlock 设置新位置。"
  L["MSG_UNLOCKED"] = "已解锁。拖动框后右键锁定。"
  L["MSG_RESET"] = "位置已重置。"

  L["OPT_DESC"] = "解锁移动框来调整提示框位置。拖动到想要的位置后再锁定即可保存。"
  L["OPT_LOCK_NAME"] = "锁定提示框位置"
  L["OPT_LOCK_DESC"] = "隐藏移动框，并将提示框固定在已保存的位置。"

end

L = AceLocale:NewLocale("FastMoveTooltip", "zhTW")
if L then
  L["MOVE_FRAME"] = "移動此框以移動提示框"
  L["RIGHT_CLICK_LOCK"] = "右鍵鎖定"
  L["ANCHOR_HINT"] = "錨點為右下角"

  L["CMD_UNLOCK_NAME"] = "解鎖"
  L["CMD_UNLOCK_DESC"] = "解鎖提示框位置，以便移動"
  L["CMD_RESET_NAME"] = "重置"
  L["CMD_RESET_DESC"] = "將提示框位置重置為預設"

  L["MSG_SAVED"] = "位置已保存。使用 /fmt unlock 設定新位置。"
  L["MSG_UNLOCKED"] = "已解鎖。拖曳框後右鍵鎖定。"
  L["MSG_RESET"] = "位置已重置。"

  L["OPT_DESC"] = "解除鎖定移動框即可調整提示位置。拖曳到想要的位置後再鎖定即可儲存。"
  L["OPT_LOCK_NAME"] = "鎖定提示位置"
  L["OPT_LOCK_DESC"] = "隱藏移動框，並將提示固定在已儲存的位置。"

end
