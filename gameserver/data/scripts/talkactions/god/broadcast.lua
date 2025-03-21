local talkaction = TalkAction("/b")

function talkaction.onSay(player, words, param)
	if not player:hasFlag(PlayerFlag_CanBroadcast) then
		return true
	end

	print("> " .. player:getName() .. " broadcasted: \"" .. param .. "\".")
	for _, targetPlayer in ipairs(Game.getPlayers()) do
		targetPlayer:sendPrivateMessage(player, param, TALKTYPE_BROADCAST)
	end
	return false
end

talkaction:separator(" ")
talkaction:register()
