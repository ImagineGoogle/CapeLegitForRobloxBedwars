local a = {
	1451596734;
	3752180075;
	3846711055;
	3866519161;
	913502943;
}

local b = {
	562994998;
}

local repstorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")
local lplr = players.LocalPlayer

local function runcode(func)
	func()
end

runcode(function()
	local oldchanneltab
	local oldchannelfunc
	local oldchanneltabs = {}

	if getconnections then
		for i,v in pairs(getconnections(repstorage.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent)) do
			if v.Function and #debug.getupvalues(v.Function) > 0 and type(debug.getupvalues(v.Function)[1]) == "table" and getmetatable(debug.getupvalues(v.Function)[1]) and getmetatable(debug.getupvalues(v.Function)[1]).GetChannel then
				oldchanneltab = getmetatable(debug.getupvalues(v.Function)[1])
				oldchannelfunc = getmetatable(debug.getupvalues(v.Function)[1]).GetChannel
				getmetatable(debug.getupvalues(v.Function)[1]).GetChannel = function(Self, Name)
					local tab = oldchannelfunc(Self, Name)
					if tab and tab.AddMessageToChannel then
						local addmessage = tab.AddMessageToChannel
						if oldchanneltabs[tab] == nil then
							oldchanneltabs[tab] = tab.AddMessageToChannel
						end
						tab.AddMessageToChannel = function(Self2, MessageData)
							if MessageData.FromSpeaker and players[MessageData.FromSpeaker] then
								if players[MessageData.FromSpeaker].UserId == 1451596734 then
									MessageData.ExtraData = {
										NameColor = players[MessageData.FromSpeaker].Team == nil and Color3.new(0, 1, 1) or players[MessageData.FromSpeaker].TeamColor.Color,
										Tags = {
											table.unpack(MessageData.ExtraData.Tags),
											{
												TagColor = Color3.new(1, 0.3, 0.3),
												TagText = "CAPE OWNER"
											}
										}
									}
								end
								if players[MessageData.FromSpeaker].UserId == 562994998 then
									MessageData.ExtraData = {
										NameColor = players[MessageData.FromSpeaker].Team == nil and Color3.new(0, 1, 1) or players[MessageData.FromSpeaker].TeamColor.Color,
										Tags = {
											table.unpack(MessageData.ExtraData.Tags),
											{
												TagColor = Color3.new(0.7, 0, 1),
												TagText = "CAPE PRIVATE"
											}
										}
									}
								end
							end
							return addmessage(Self2, MessageData)
						end
					end
					return tab
				end
			end
		end
	end
end)
