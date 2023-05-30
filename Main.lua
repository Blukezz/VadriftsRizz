local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Rafacasari/ArrayField/main/v2.lua'))()

local Window = Rayfield:CreateWindow({
	Name = "Vadrifts Rizz | .gg/vadriftsx",
	LoadingTitle = "Vadrifts Rizz Script",
	LoadingSubtitle = "W rizz.",
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
local Credits2 = Home:CreateLabel("Vadrifts Team - Lines", HomeSection2)

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
    "Do you have a name, or can I call you mine?",
    "Did you make Santas naughty list this year? You want to?",
    "Is your name Google? Because you have everything I've been searching for.",
    "Excuse me, but I think you dropped something: my jaw.",
    "Is your dad a baker? Because you're a cutie pie.",
    "Are you a parking ticket? Because you've got 'Fine' written all over you.",
    "Can I follow you home? Cause my parents always told me to follow my dreams.",
    "Is your name Wi-Fi? Because I'm really feeling a connection.",
    "Im not feeling myself today. Can I feel you instead?",
    "Do you believe in love at first sight, or should I walk by again?",
    "I know were not socks, but we make a great pair.",
    "Excuse me, but I think you dropped something: my pick-up line.",
    "Are you a Creeper? Because you make my heart explode every time I see you.",
    "Are you a VIP server? Because you're exclusive, and I want to spend all my time with you.",
    "Is your avatar a sun? Because you brighten up my day more than Bloxy Cola.",
    "Are you a firework, cause i can light you up",
    "Are you a Roblox game? Because I can't stop playing you in my dreams.",
    "Is your username a keyboard? Because you're just my type."
}

for i, v in pairs(TableOfPickUpLines) do
	PickupLines:CreateButton({
		Name = v,
		Interact = "Chat",
        SectionParent = PickupLinesSection1,
		Callback = function()
			Chat(v)
		end,
	})
end

local PoeticRizz = Window:CreateTab("Poetic Rizz")
local PoeticRizzSection1 = PoeticRizz:CreateSection("Poetic Rizz", false)

local TableOfRizz = {
    "It is not a great quantity of love that I need but a constant supply of your heart.",
    "May I have the distinguished honor and privilege of sitting next to you?",
    "If you where Monday, I'd wish every day be Monday becuse your so beautiful.",
    "If your lips were plug and mine a switch, I would have the hair electrified and the heart lit",
    "If my soul were a pen and my heart ink, with the blood of my veins I would write I love you.",
    "If I had to choose between breathing and loving you.... I'd take my last breath to say I Love You",
    "Roses are red, bananas are yellow, wanna go out with a nice little fellow?"
}

for i, v in pairs(TableOfRizz) do
    PoeticRizz:CreateParagraph({
        Title = "Message",
        Content = v,
    }, PoeticRizzSection1)

	PoeticRizz:CreateButton({
		Name = "Send Message",
		Interact = "Chat",
        SectionParent = PoeticRizzSection1,
		Callback = function()
			Chat(v)
		end,
	})
end