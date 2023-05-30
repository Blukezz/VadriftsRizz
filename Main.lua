local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
	Name = "Vadrifts Rizz | .gg/vadriftsx",
	LoadingTitle = "Vadrifts Rizz Script",
	LoadingSubtitle = "The best rizz script.",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil,
		FileName = "Big Hub",
	},
	Discord = {
		Enabled = true,
		Invite = "vadriftsx",
		RememberJoins = true,
	},
	KeySystem = false,
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false,
		Key = "Hello",
	},
})

local Home = Window:CreateTab("Home", 13300916613)
local HomeSection1 = Home:CreateSection("Welcome", false)

local Paragraph = Home:CreateParagraph({
	Title = "Welcome!",
	Content = "Welcome to the Vadrifts Rizz Script! With good pickup lines get some women! Make sure to join ou discord server at discord.gg/vadriftsx.",
	HomeSection1,
})

local HomeSection2 = Home:CreateSection("Credits", false)

local Credits1 = Home:CreateLabel("Blukez - Making the script", HomeSection2)
local Credits2 = Home:CreateLabel("Vadrifts Team - Pickup Lines", HomeSection2)

function Chat(message)
	local args = {
		[1] = message,
		[2] = "All",
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

local PickupLines = Window:CreateTab("Pick-up Lines", 13300918071)
local PickupLinesSection1 = PickupLines:CreateSection("Pick-Up Lines", true)

local TableOfPickUpLines = {
	"Is your name Wi-Fi? Because I'm feeling a connection.",
	"Do you have a map? Because I keep getting lost in your eyes.",
    "Is your dad a baker? Because you're a cutie pie!"
}

for i, v in pairs(TableOfPickUpLines) do
	PickupLines:CreateButton({
		Name = v,
		Interact = "Chat",
		Callback = function()
			Chat(v)
		end,
	})
end