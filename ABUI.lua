local Finity = loadstring(game:HttpGet("https://d3to-finity.000webhostapp.com/files/source-0.1.2.txt", true))()
local Window = Finity.new(true)
Window.ChangeToggleKey(Enum.KeyCode.Semicolon)
local CheatsSection = Window:Category("Cheats")
local FarmSection = Window:Category("Farming")
local InformationSection = Window:Category("Information")
--Main Stuff ▲

--Cheat Sectors ▼
local CombatSector = CheatsSection:Sector("Combat Cheats")
local SeverSector = CheatsSection:Sector("Server Cheats")
local CharacterSector = CheatsSection:Sector("Character Cheats")
--Farm Sectors ▼
local DIOFarmSector = FarmSection:Sector("DIO Farm")
local StandFarmSector = FarmSection:Sector("Stand Farm")
local SamuraiFarmSector = FarmSection:Sector("Samurai Farm")
local ItemFarmSector = FarmSection:Sector("Item Farm")
-----------------------------
--Sectors ▲

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Character = Player.Character
local Root = Character.HumanoidRootPart
local Humanoid = Character.Humanoid

--Player/Services Stuff ▲

local DamageAmount = 99/2
local KnockbackAmount = 30/2
local HitAmount = 250/2
local Target = ""

--Kill ▲

--Crash ▼

local CrashStrength = 20/2

--DIO Farm ▼

local AutoTPITems = false
local DIOFarm = false

--Samurai Farm
local SamuraiFarm = false

--Stand Farm
local StandFarm = false
local CurrentStandFarm = ""

--Item Farm
local ItemFarmEnabled = false
local ItemsToFarm = {}

-------------------------------------------------
--Variables ▲

--Functions ▼
local function ReturnValueIndex(Table, Value)
	for i,v in pairs(Table) do
		if v == Value then
			return i
		end
	end
end

function FindPlayer(Text)
    local Text = Text:lower()
    for _, v in pairs(workspace.Entities:GetChildren()) do
	if not v:FindFirstChildOfClass("Humanoid") then return false end
        local name = v.Name:lower():sub(0, Text:len())
        if name == Text then
            return v
        end
    end
    return nil
end

function PseudoCall(Remote, Args)
 local Func = Remote["FireServer"]
 Func(Remote, unpack(Args))
end

--Cheats ▼

--Kill cheats ▼

local DamageSlider = CombatSector:Cheat("Slider", "Damage Amount", function(Val)
DamageAmount = Val
end, {min = 0, max = 99, suffix = " damage"})

local KnockbackSlider = CombatSector:Cheat("Slider", "Knockback Amount", function(Val)
KnockbackAmount = Val
end, {min = 0, max = 30})

local HitAmountSlider = CombatSector:Cheat("Slider", "Hit Amount", function(Val)
HitAmount = Val
end, {min = 1, max = 250})

local TargetBox = CombatSector:Cheat("TextBox", "Target", function(Text)
Target = FindPlayer(Text).Name
end, {placeholder = "Target can be an NPC"})

local HitButton = CombatSector:Cheat("Button", "Hit Target", function()
	
	for i = 1,HitAmount do
			local Arguments = {
game:GetService("Workspace").Entities[Target].Humanoid;
CFrame.new(-math.huge, -42.6603165, -10.4492311, -0.552548051, -0.724469781, -0.412109613, 0.468404055, 0.13906762, -0.872500956, 0.68941164, -0.675132513, 0.262503028);
DamageAmount;
KnockbackAmount;
 Vector3.new(31.6247997, -5.44205989e-07, 38.7281799);
 "";
 0.075;
Color3.new(255, 255, 255);
"rbxassetid://386946017";
0;
0;
				}
PseudoCall(game:GetService("ReplicatedStorage").Damage, Arguments)
	end
	
end)

local BringButton = CombatSector:Cheat("Button", "Bring/Kill Target", function()
	for i = 1,HitAmount do
	local userdata_1 = game:GetService("Workspace").Entities[Target].Humanoid;
local number_1 = DamageAmount;
local number_2 = KnockbackAmount;
local userdata_2 = Vector3.new(14.5143147, -7.00628107e-07, 47.8469925);
local Target = game:GetService("ReplicatedStorage").VampireFreeze;
Target:FireServer(userdata_1, number_1, number_2, userdata_2);
end
end)

CombatSector:Cheat("Button", "Goto Target", function()
	Root.CFrame = workspace.Entities[Target].Character.HumanoidRootPart.CFrame * CFrame.new(0,0,3)
end)

CombatSector:Cheat("Button", "Float Target", function()
			local Arguments = {
game:GetService("Workspace").Entities[Target].Humanoid;
CFrame.new(-math.huge, -42.6603165, -10.4492311, -0.552548051, -0.724469781, -0.412109613, 0.468404055, 0.13906762, -0.872500956, 0.68941164, -0.675132513, 0.262503028);
0;
39;
 Vector3.new(0, 5, 0);
 "";
 0.075;
Color3.new(255, 255, 255);
"rbxassetid://386946017";
0;
0;
				}
PseudoCall(game:GetService("ReplicatedStorage").Damage, Arguments);
end)

local InfHealthButton = CharacterSector:Cheat("Button", "Infinite Health", function()
local userdata_1 = game:GetService("Players").LocalPlayer.Character.Humanoid;
local number_1 = -math.huge;
local number_2 = 0;
local userdata_2 = Vector3.new(14.5143147, -7.00628107e-07, 47.8469925);
local Target = game:GetService("ReplicatedStorage").VampireFreeze;
Target:FireServer(userdata_1, number_1, number_2, userdata_2);
end)

CharacterSector:Cheat("Slider", "Walk Speed", function(Val)
	Humanoid.WalkSpeed = Val
end, {min = 16, max = 200, suffix = " Walk Speed"})

CharacterSector:Cheat("Slider", "Jump Power", function(Val)
	Humanoid.JumpPower = Val
end, {min = 50, max = 125, suffix = " Jump Power"})
--Server Cheats ▼


local CrashSlider = SeverSector:Cheat("Slider", "Strength", function(Val)
	CrashStrength = Val
end, {min = 5, max = 20})

local CrashButton = SeverSector:Cheat("Button", "Crash", function()
	game:GetService("RunService").RenderStepped:Connect(function()
		for i = 1,CrashStrength do
		local userdata_1 = CFrame.new(1892.172, -45.3632736, 220.67247, -0.99429065, -0.0476831421, 0.0954586565, -0, 0.894600272, 0.446867347, -0.10670536, 0.44431603, -0.88949275);
        local Target = game:GetService("ReplicatedStorage").EmperorMirrorThrow;
        Target:FireServer(userdata_1);
        end
	end)
end)

SeverSector:Cheat("Button", "Kill All", function()
	for _,PlayerV in pairs(game:GetService("Workspace").Entities:GetChildren()) do
		if PlayerV:FindFirstChildOfClass("Humanoid") then
			if PlayerV.Name ~= Player.Name then
			local Arguments = {
game:GetService("Workspace").Entities[PlayerV.Name].Humanoid;
CFrame.new(-math.huge, -42.6603165, -10.4492311, -0.552548051, -0.724469781, -0.412109613, 0.468404055, 0.13906762, -0.872500956, 0.68941164, -0.675132513, 0.262503028);
99;
0;
 Vector3.new(0,0,0);
 "";
 0.075;
Color3.new(255, 255, 255);
"rbxassetid://386946017";
0;
0;
				}
						for i = 1,10 do
PseudoCall(game:GetService("ReplicatedStorage").Damage, Arguments)
						end
		end
		end
		end
end)

SeverSector:Cheat("Button", "Float All", function()
	for _,PlayerV in pairs(game:GetService("Workspace").Entities:GetChildren()) do
		if PlayerV:FindFirstChildOfClass("Humanoid") then
			if PlayerV.Name ~= Player.Name then
			local Arguments = {
game:GetService("Workspace").Entities[PlayerV.Name].Humanoid;
CFrame.new(-math.huge, -42.6603165, -10.4492311, -0.552548051, -0.724469781, -0.412109613, 0.468404055, 0.13906762, -0.872500956, 0.68941164, -0.675132513, 0.262503028);
0;
39;
 Vector3.new(0, 5, 0);
 "";
 0.075;
Color3.new(255, 255, 255);
"rbxassetid://386946017";
0;
0;
				}
PseudoCall(game:GetService("ReplicatedStorage").Damage, Arguments);
		end
		end
		end
end)

SeverSector:Cheat("Button", "Bring All", function()
	for _,PlayerV in pairs(game:GetService("Workspace").Entities:GetChildren()) do
		if PlayerV:FindFirstChildOfClass("Humanoid") then
			if PlayerV.Name ~= Player.Name then
local userdata_1 = PlayerV.Humanoid;
local number_1 = 0;
local number_2 = 0;
local userdata_2 = Vector3.new(0,-2,0);
local Target = game:GetService("ReplicatedStorage").VampireFreeze;
Target:FireServer(userdata_1, number_1, number_2, userdata_2);
		end
		end
	end
	wait(0.2)
Root.CFrame = Root.CFrame * CFrame.new(0,10,0)
end)
--DIO Farm Options ▼

DIOFarmSector:Cheat("Checkbox", "Auto Pickup Items", function(State)
	AutoTPITems = State
end)

DIOFarmSector:Cheat("Checkbox", "Enabled", function(State)

while wait() do
	if DIOFarm == false then repeat wait() until DIOFarm == true end
	repeat wait() until game:GetService("Workspace"):FindFirstChild("DIO", true)
		local userdata_1 = game:GetService("Workspace").Entities["DIO"].Humanoid;
        local number_1 = math.huge;
        local number_2 = 0;
        local userdata_2 = Vector3.new(14.5143147, -7.00628107e-07, 47.8469925);
        local Target = game:GetService("ReplicatedStorage").VampireFreeze;
        Target:FireServer(userdata_1, number_1, number_2, userdata_2);
        for i = 1,20 do
	wait(0.1)
	for _,v in pairs(workspace:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.CFrame = Root.CFrame
		end
	end
end
end

end)

--Samurai Farm Options ▼

SamuraiFarmSector:Cheat("Checkbox", "Enabled", function(State)
	SamuraiFarm = State
end)


--Stand Farm Options ▼

StandFarmSector:Cheat("Checkbox", "Enabled", function(State)
	StandFarm = State
end)

StandFarmSector:Cheat("Dropdown", "Stand To Farm", function(Opt)
	CurrentStandFarm = Opt
end, {
	options = {
		"None",
		"This is a test",
		"You Dumbass",
		"EE",
		"EEEEEEEEEEEEEEEE"
	}
})



--Item Farm Options ▼
ItemFarmSector:Cheat("Checkbox", "Enabled", function(State)
	ItemFarmEnabled = State
end)

ItemFarmSector:Cheat("Checkbox", "Banknotes", function(State)
	if State then
		table.insert(ItemsToFarm, 1, "Banknote")
	else
		table.remove(ItemsToFarm, 1)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Arrows", function(State)
	if State then
		table.insert(ItemsToFarm, 2, "Arrow")
	else
		table.remove(ItemsToFarm, 2)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Frogs", function(State)
	if State then
		table.insert(ItemsToFarm, 3, "Frog")
	else
		table.remove(ItemsToFarm, 3)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Diary", function(State)
	if State then
		table.insert(ItemsToFarm, 4, "DIO's Diary")
	else
		table.remove(ItemsToFarm, 4)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Camera", function(State)
	if State then
		table.insert(ItemsToFarm, 5, "Camera")
	else
		table.remove(ItemsToFarm, 5)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Rokakaka Fruits", function(State)
	if State then
		table.insert(ItemsToFarm, 1, "Rokakaka Fruit")
	else
		table.remove(ItemsToFarm, 1)
	end
end)


ItemFarmSector:Cheat("Checkbox", "Vampire Masks", function(State)
	if State then
		table.insert(ItemsToFarm, 6, "Vampire Mask")
	else
		table.remove(ItemsToFarm, 6)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Requiem Arrows", function(State)
	if State then
		table.insert(ItemsToFarm, 7, "Requiem Arrow")
	else
		table.remove(ItemsToFarm, 7)
	end
end)

ItemFarmSector:Cheat("Checkbox", "Ender Pearls", function(State)
	if State then
		table.insert(ItemsToFarm, 8, "Ender Pearl")
	else
		table.remove(ItemsToFarm, 8)
	end
end)

--Item Farm Scripts ▼

game:GetService("RunService").RenderStepped:Connect(function()
	if ItemFarmEnabled then
		for _,Thing in pairs(ItemsToFarm) do
			if game:GetService("Workspace"):FindFirstChild(Thing) then
				game:GetService("Workspace"):FindFirstChild(Thing).Handle.CFrame = Root.CFrame
				wait(.05)
				Humanoid:EquipTool(Player.Backpack[Thing])
			end
		end
	end
end)

--Information Section ▼
local CreditsSector = InformationSection:Sector("Credits:")
CreditsSector:Cheat("Label", "UI Library Credits go to the Project Finity Creators for making this awesome UI Library!")
CreditsSector:Cheat("Label", "Scripts and GUI making credits go to DerzeTT#7492 (Me! :D)")
