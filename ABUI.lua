local Finity = loadstring(game:HttpGet("https://d3to-finity.000webhostapp.com/files/source-0.1.2.txt"))()
local Window = Finity.new(true)
Window.ChangeToggleKey(Enum.KeyCode.C)
local CheatsSection = Window:Category("Cheats")
local FarmSection = Window:Category("Farming")
local InformationSection = Window:Category("Information")
--Main Stuff ▲

--Cheat Sectors ▼
local CombatSector = CheatsSection:Sector("Combat Cheats")
local CrashSector = CheatsSection:Sector("Crash Server")
--Farm Sectors ▼
local DIOFarmSector = FarmSection:Sector("DIO Farm")
local StandFarmSector = FarmSection:Sector("Stand Farm")
local SamuraiFarmSector = FarmSection:Sector("Samurai Farm")
-----------------------------
--Sectors ▲

local DamageAmount = 249.5
local KnockbackAmount = 15
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
-------------------------------------------------
--Variables ▲


--Cheats ▼

--Kill cheats ▼

local DamageSlider = CombatSector:Cheat("Slider", "Damage Amount", function(Val)
DamageAmount = Val
end, {min = 0, max = 499, suffix = " damage"})

local KnockbackSlider = CombatSector:Cheat("Slider", "Knockback Amount", function(Val)
KnockbackAmount = Val
end, {min = 0, max = 30})

local HitAmount = CombatSector:Cheat("Slider", "Hit Amount", function(Val)
HitAmount = Val
end, {min = 0, max = 250})

local TargetBox = CombatSector:Cheat("TextBox", "Target", function(Text)
Target = Text
end, {placeholder = "Target can be an NPC"})

local KillButton = CombatSector:Cheat("Button", "Kill Target", function()
print(DamageAmount, KnockbackAmount, HitAmount, Target)
end)

local BringButton = CombatSector:Cheat("Button", "Bring Target", function()
	print(DamageAmount, KnockbackAmount, Target)
end)

--Crash Cheats ▼


local CrashSlider = CrashSector:Cheat("Slider", "Strength", function(Val)
	CrashStrength = Val
end, {min = 5, max = 20})

local CrashButton = CrashSector:Cheat("Button", "Crash", function()
	print("Crash Strength: "..CrashStrength)
end)

--DIO Farm Options ▼

local AutoGetCheckbox = DIOFarmSector:Cheat("Checkbox", "Auto Pickup Items", function(State)
	AutoTPITems = State
end)

local EnabledDIOFarmCheckbox = DIOFarmSector:Cheat("Checkbox", "Enabled", function(State)
	DIOFarm = State
end)

--Samurai Farm Options ▼

local EnabledSamuraiFarmCheckbox = SamuraiFarmSector:Cheat("Checkbox", "Enabled", function(State)
	SamuraiFarm = State
end)


--Stand Farm Options ▼

local EnabledStandFarmCheckbox = StandFarmSector:Cheat("Checkbox", "Enabled", function(State)
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



--Information Section ▼
local CreditsSector = InformationSection:Sector("Credits:")
CreditsSector:Cheat("Label", "Credits go to Project Finity staff for creating the UI Library and DerzeTT#7492 (The creator of this GUI)!")
