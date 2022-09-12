repeat task.wait() until game:IsLoaded()

local ScriptSettings = {
	CustomAnimations = false;
	SweatDetector = false;
	ClanDetector = false;
}

local betterisfile = function(file)
	local suc, res = pcall(function() return readfile(file) end)
	return suc and res ~= nil
end

local CoreGui = game:GetService("CoreGui")
local RunSerive = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local repstorage = game:GetService("ReplicatedStorage")
local players = game:GetService("Players")

local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function() end
queueteleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/ImagineGoogle/CapeForRobloxBedwars/main/MainScript.lua", true))()')

local file = "CapeSettings.txt"

local function LoadSettings()
	local HttpService = game:GetService("HttpService")
	if (readfile and isfile and betterisfile(file)) then
		ScriptSettings = HttpService:JSONDecode(readfile(file))
		for i, v in pairs(ScriptSettings) do
			print(i, v)
		end
	end
end

local function SaveSettings()
	local json
	local HttpService = game:GetService("HttpService")
	if (writefile) then
		json = HttpService:JSONEncode(ScriptSettings)
		writefile(file, json)
	end
end

-- Instances:

local Cape = Instance.new("ScreenGui")
local ClickGui = Instance.new("Frame")
local Notifications = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Utility = Instance.new("Frame")
local Main = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Label = Instance.new("TextLabel")
local Collapse = Instance.new("ImageButton")
local Assets = Instance.new("Frame")
local Notification = Instance.new("Frame")
local MainNotif = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Module = Instance.new("TextButton")

--Properties:

Cape.Name = "Cape"
Cape.Parent = CoreGui
Cape.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Cape.DisplayOrder = 999999999
Cape.OnTopOfCoreBlur = true

for i, v in pairs(CoreGui:GetChildren()) do
	if v:IsA("ScreenGui") then
		v.OnTopOfCoreBlur = true
	end
end

ClickGui.Name = "ClickGui"
ClickGui.Parent = Cape
ClickGui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClickGui.BackgroundTransparency = 1.000
ClickGui.Size = UDim2.new(1, 0, 1, 0)
ClickGui.Visible = false

Notifications.Name = "Notifications"
Notifications.Parent = ClickGui
Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notifications.BackgroundTransparency = 1.000
Notifications.Size = UDim2.new(1, 0, 0.99000001, 0)

UIListLayout.Parent = Notifications
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0.00499999989, 0)

Utility.Name = "Utility"
Utility.Parent = ClickGui
Utility.AnchorPoint = Vector2.new(0.5, 0.5)
Utility.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Utility.BorderSizePixel = 0
Utility.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Utility.Size = UDim2.new(0, 268, 0, 39)
Utility.Active = true
Utility.Draggable = true

Main.Name = "Main"
Main.Parent = Utility
Main.Active = true
Main.AnchorPoint = Vector2.new(1, 0)
Main.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(1, 0, 0.997210443, 0)
Main.Size = UDim2.new(1, 0,9.181, 0)
Main.ScrollBarThickness = 0
Main.Visible = false

UIListLayout_2.Parent = Main
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Label.Name = "Label"
Label.Parent = Utility
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Position = UDim2.new(0.0425531901, 0, 0, 0)
Label.Size = UDim2.new(0.795744658, 0, 1, 0)
Label.Font = Enum.Font.SourceSans
Label.Text = "Utility"
Label.TextColor3 = Color3.fromRGB(188, 188, 188)
Label.TextSize = 24.000
Label.TextXAlignment = Enum.TextXAlignment.Left

Collapse.Name = "Collapse"
Collapse.Parent = Utility
Collapse.AnchorPoint = Vector2.new(0, 0.5)
Collapse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Collapse.BackgroundTransparency = 1.000
Collapse.Position = UDim2.new(0.893616974, 0, 0.5, 0)
Collapse.Rotation = 90.000
Collapse.Size = UDim2.new(0, 15, 0, 15)
Collapse.Image = "rbxassetid://9388739304"
Collapse.ImageColor3 = Color3.fromRGB(188, 188, 188)

Assets.Name = "Assets"
Assets.Parent = ClickGui
Assets.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Assets.BackgroundTransparency = 1.000
Assets.Size = UDim2.new(0, 100, 0, 100)
Assets.Visible = false

Notification.Name = "Notification"
Notification.Parent = Assets
Notification.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Notification.BackgroundTransparency = 1.000
Notification.BorderSizePixel = 0
Notification.Position = UDim2.new(0.806531131, 0, 0.893512845, 0)
Notification.Size = UDim2.new(0, 314, 0, 87)

MainNotif.Name = "MainNotif"
MainNotif.Parent = Notification
MainNotif.AnchorPoint = Vector2.new(0, 0.5)
MainNotif.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainNotif.BackgroundTransparency = 0.300
MainNotif.BorderSizePixel = 0
MainNotif.Position = UDim2.new(0, 0, 0.5, 0)
MainNotif.Size = UDim2.new(1.10000002, 0, 0.949999988, 0)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = MainNotif

Title.Name = "Title"
Title.Parent = MainNotif
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(0.899999976, 0, 0.200000003, 0)
Title.Font = Enum.Font.Gotham
Title.Text = "Title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Text.Name = "Text"
Text.Parent = MainNotif
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.Position = UDim2.new(0, 0, 0.193587407, 0)
Text.Size = UDim2.new(0.899999976, 0, 0.806411505, 0)
Text.Font = Enum.Font.Gotham
Text.Text = "Text"
Text.TextColor3 = Color3.fromRGB(218, 218, 218)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

UITextSizeConstraint.Parent = Text
UITextSizeConstraint.MaxTextSize = 18

Module.Name = "Module"
Module.Parent = Assets
Module.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Module.BorderSizePixel = 0
Module.Size = UDim2.new(1, 0, 0, 50)
Module.AutoButtonColor = false
Module.Font = Enum.Font.SourceSans
Module.Text = "   ClanNameNotifs"
Module.TextColor3 = Color3.fromRGB(188, 188, 188)
Module.TextSize = 19.000
Module.TextXAlignment = Enum.TextXAlignment.Left

LoadSettings()

local lplr = game:GetService("Players").LocalPlayer


local function isAlive(plr)
	local plr = plr or lplr
	if plr and plr.Character and ((plr.Character:FindFirstChild("Humanoid")) and (plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0) and (plr.Character:FindFirstChild("HumanoidRootPart")) and (plr.Character:FindFirstChild("Head"))) then
		return true
	end
end

local NotifTable = {}

local function ToggleGui()
	if ClickGui.Visible == true then
		ClickGui.Visible = false
		RunSerive:SetRobloxGuiFocused(false)
	else
		ClickGui.Visible = true
		RunSerive:SetRobloxGuiFocused(true)
	end
end

local function CollapseFrame()
	if Main.Visible == true then
		Main.Visible = false
		Collapse.Rotation = 90
	else
		Main.Visible = true
		Collapse.Rotation = 270
	end
end

local function CreateNotification(title, text, module)
	task.spawn(function()
		local notif = Notification:Clone()
		notif.Name = module
		table.insert(NotifTable, notif.Name)
		local tnumber = table.find(NotifTable, module)
		notif.Parent = Notifications
		notif.LayoutOrder = #NotifTable + 1
		notif.MainNotif.Title.Text = title
		notif.MainNotif.Text.Text = Text
		task.wait(1)

		table.remove(NotifTable, tnumber)
		notif:Destroy()
	end)
end

local function CreateModule(name)
	local newmodule = Module:Clone()
	newmodule.Name = "   " .. name
	newmodule.Text = "   " .. name
	newmodule.Parent = Main
end

CreateModule("ClanDetector")
CreateModule("SweatDetector")
CreateModule("CustomAnimations")

task.spawn(function()
	task.wait(3)
	if ScriptSettings.SweatDetector == true then
		for i, v in pairs(players:GetPlayers()) do
			local sweat = false
			if isAlive(v) then
				for i2, v2 in pairs(v.Character:GetChildren()) do
					if v2:IsA("Accessory") and string.find(v2.Name:lower(), "tanqr") then
						sweat = true
					end
				end
				pcall(function()
					if v.Character.Animate.run.RunAnim.AnimationId == "http://www.roblox.com/asset/?id=507767714" then
						sweat = true
					end
				end)
			end
			if sweat == true then
				CreateNotification("Sweat Detector", "There is a sweat (" .. v.DisplayName .. ") on " .. tostring(v.TeamColor) or "nil" .. " team!")
			end
		end
	end
end)

for i, v in pairs(Main:GetChildren()) do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			if v.BackgroundColor3 == Color3.fromRGB(30, 30, 30) then
				v.BackgroundColor3 = Color3.fromRGB(38, 134, 106)
				v.TextColor3 = Color3.fromRGB(255, 255, 255)
				if v.Text == "   CustomAnimations" then
					ScriptSettings.CustomAnimations = true
					task.wait(0.03)
					if isAlive() then lplr.Character.Humanoid.Jump = true end
				elseif v.Text == "   SweatDetector" then
					ScriptSettings.SweatDetector = true
				end
				SaveSettings()
			else
				v.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
				v.TextColor3 = Color3.fromRGB(188, 188, 188)
				if v.Text == "   CustomAnimations" then
					ScriptSettings.CustomAnimations = false
					task.wait(0.03)
					if isAlive() then lplr.Character.Humanoid.Jump = true end
				elseif v.Text == "   SweatDetector" then
					ScriptSettings.SweatDetector = false
				end
				SaveSettings()
			end
		end)
	end
end

if getconnections then
	for i, v in pairs(ScriptSettings) do
		if v == true then
			print(i, v)
			firesignal(Main["   " .. i].MouseButton1Click)
		end
	end
end

task.spawn(function()
	while task.wait() do
		if ScriptSettings.CustomAnimations and ScriptSettings.CustomAnimations == true then
			if isAlive() then
				local Animate = lplr.Character.Animate
				Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083195517"
				Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083214717"
				Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
				Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
				Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
				Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
			end
		else
			if isAlive() then
				local Animate = lplr.Character.Animate
				Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=507766388"
				Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=507766666"
				Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=507777826"
				Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=507767714"
				Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=507765000"
				Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=507765644"
				Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=507767968"
				Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=507784897"
				Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=507785072"
			end
		end
	end
end)

Collapse.MouseButton1Click:Connect(CollapseFrame)

UIS.InputBegan:Connect(function(i, gpe)
	if i.KeyCode == Enum.KeyCode.Y then
		ToggleGui()
	end
end)

task.spawn(function()
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
									for i2, v2 in pairs(a) do
										if players[MessageData.FromSpeaker].UserId == v2 then
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
									end
									for i2, v2 in pairs(b) do
										if players[MessageData.FromSpeaker].UserId == v2 then
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
end)
