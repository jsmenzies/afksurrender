local function OnSlashCommand(msg)
    local instanceType = select(2, IsInInstance())
    
    if instanceType == "arena" then
        C_PvP.SurrenderArena()
        print("Surrendering arena...")
    else
        SendChatMessage("", "AFK")
        print("Normal AFK (not in arena)")
    end
end

-- Register the slash command
SLASH_AFK1 = "/afk"
SlashCmdList["AFK"] = OnSlashCommand

-- Simple direct print
DEFAULT_CHAT_FRAME:AddMessage("AFK Surrender addon loaded!", 1, 1, 0)