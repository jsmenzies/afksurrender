local OriginalSendChatMessage = SendChatMessage

function SendChatMessage(msg, chatType, language, target)
    if chatType == "AFK" then
        local instanceType = select(2, IsInInstance())

        if instanceType == "arena" then
            C_PvP.SurrenderArena()
            print("AfkSurrender: Surrendering arena!")
            return
        else
            print("AfkSurrender: Going AFK")
        end
    end

    return OriginalSendChatMessage(msg, chatType, language, target)
end

DEFAULT_CHAT_FRAME:AddMessage("AfkSurrender loaded!", 1, 1, 0)