local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua'))()

local Window = Rayfield:CreateWindow({
	Name = "Vadrifts Rizz | .gg/vadriftsx",
	LoadingTitle = "Vadrifts Rizz Script",
	LoadingSubtitle = "The best rizz script.",
    OldTabLayout = true,
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

local Home = Window:CreateTab("Home")
local HomeSection1 = Home:CreateSection("Welcome", false)

local Paragraph = Home:CreateParagraph({
	Title = "Welcome!",
	Content = "Welcome to the Vadrifts Rizz Script! With good pickup lines get some women! Make sure to join ou discord server at discord.gg/vadriftsx.",
}, HomeSection1)

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

local PickupLines = Window:CreateTab("Pick-up Lines")
local PickupLinesSection1 = PickupLines:CreateSection("Pick-Up Lines", false)

local TableOfPickUpLines = {
    "Are you a magician? Because whenever I look at you, everyone else disappears.",
    "Is your name Google? Because you have everything I've been searching for.",
    "Excuse me, but I think you dropped something: my jaw.",
    "If you were a vegetable, you'd be a cute-cumber!" ,
    "Do you believe in love at first sight, or should I walk by again?",
    "Is your dad a baker? Because you're a cutie pie!",
    "Do you have a map? Because I keep getting lost in your eyes.",
    "Are you a camera? Every time I look at you, I smile.",
    "Is your name Wi-Fi? Because I'm feeling a connection.",
    "Can I follow you home? Cause my parents always told me to follow my dreams.",
    "I must be in a museum, because you truly are a work of art.",
    "I wish I were cross-eyed so I can see you twice.",
    "If I could rearrange the alphabet, Id put U and I together."
}

for i, v in pairs(TableOfPickUpLines) do
	PickupLines:CreateButton({
		Name = v,
		Interact = "Chat",
        PickupLinesSection1,
		Callback = function()
			Chat(v)
		end,
	})
end