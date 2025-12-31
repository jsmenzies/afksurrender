local function OnSlashCommand(msg)
    -- Check if we're in an arena
    local instanceType = select(2, IsInInstance())
    
    if instanceType == "arena" then
        -- We're in arena, surrender instead
        C_PvP.SurrenderArena()
        print("Surrendering arena...")
    else
        -- Not in arena, do normal AFK
        SendChatMessage("", "AFK")
        print("Normal AFK (not in arena)")
    end
end

-- Register the slash command
SLASH_AFK1 = "/afk"
SlashCmdList["AFK"] = OnSlashCommand

-- Simple direct print
DEFAULT_CHAT_FRAME:AddMessage("AFK Surrender addon loaded!", 1, 1, 0)