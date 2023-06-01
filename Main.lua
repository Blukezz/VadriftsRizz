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
local Credits2 = Home:CreateLabel("Santi - Lines", HomeSection2)

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
    "Is your username a keyboard? Because you're just my type.",
	"Are you Vietnamese? Because I think im falling pho you.",
	"Girl, are you a game badge? Because you are totally worth every effort."
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
    "If you were Monday, I'd wish every day be Monday becuse you are so beautiful.",
    "If your lips were plug and mine a switch, I would have the hair electrified and the heart lit",
    "Roses are red, bananas are yellow, wanna go out with a nice little fellow?",
    "Let the fire of my lips melt the passion of your body, only then you will see the reflection of the universe.",
    "Long live your father and your mother! And Blessed the day they conceived you.",
    "This morning I saw a flower and I thought it was the most beautiful thing i have ever seen; until I met you.",
    "If you were Monday, I'd want to be Tuesday so I could follow you forever."
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

local AntiChatLogs = Window:CreateTab("Anti Chat Loggers")
local AntiChatLogsSection1 = AntiChatLogs:CreateSection("Anti Chat Loggers", false)

local ACLNote = AntiChatLogs:CreateParagraph({
	Title = "Note",
	Content = "Please use any of the ACLs listed below as it prevents your chat messages from getting tracked stopping you from getting banned from roblox for dating or something.",
}, AntiChatLogsSection1)

local Acl1 = AntiChatLogs:CreateButton({
	Name = "Simple",
	Interact = "Execute",
	SectionParent = AntiChatLogsSection1,
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/tFqBYJeD'))()
	end,
})

local Acl2 = AntiChatLogs:CreateButton({
	Name = "Anthony's ACL (Rewritten)",
	Interact = "Execute",
	SectionParent = AntiChatLogsSection1,
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua'))()
	end,
})

local Acl3 = AntiChatLogs:CreateButton({
	Name = "Anthony's ACL",
	Interact = "Execute",
	SectionParent = AntiChatLogsSection1,
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/PZbnE4Fj'))()
	end,
})

local HaRIZZment = Window:CreateTab("HaRIZZment")
local HaRIZZmentSection1 = HaRIZZment:CreateSection("Note", false)

local HaRIZZmentNote = HaRIZZment:CreateParagraph({
	Title = "IMPORTANT",
	Content = "Please use a Anti Chat Logger while using these as you will get banned without it.",
}, HaRIZZmentSection1)

local HaRIZZmentSection2 = HaRIZZment:CreateSection("HaRIZZment", false)

local TableOfHaRIZZment = {
	{"Roses are red, Violets are blue, Come over here and drown in my CUM.",    "R⁥⁥⁥⁥⁥⁥o⁥⁥⁥se⁥⁥⁥s a⁥⁥r⁥⁥e r⁥⁥e⁥⁥d", "V⁥io⁥⁥⁥⁥⁥⁥l⁥ets ar⁥e bl⁥ue", "C⁥o⁥⁥⁥⁥⁥m⁥⁥⁥⁥⁥⁥⁥⁥e⁥ ov⁥e⁥r ⁥⁥⁥⁥⁥he⁥re an⁥⁥⁥⁥⁥⁥d dr⁥⁥⁥⁥⁥⁥own i⁥⁥⁥⁥⁥n m⁥⁥⁥⁥⁥y", "СUМ."},
	{"If you were a balloon, Id totally blow.. by the PENIS.", "I⁥⁥⁥⁥⁥⁥f y⁥⁥⁥⁥⁥⁥⁥⁥оu w⁥⁥⁥⁥⁥⁥⁥⁥er⁥⁥⁥e ⁥⁥⁥⁥a⁥⁥⁥ bа⁥⁥⁥⁥l⁥⁥⁥⁥⁥⁥lоon, I⁥⁥⁥⁥⁥⁥d tоt⁥⁥⁥a⁥⁥⁥⁥ll⁥⁥⁥⁥⁥⁥y", "⁥⁥В⁥⁥⁥⁥l⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥w", "b⁥⁥⁥⁥⁥⁥u⁥⁥t ⁥⁥b⁥⁥⁥⁥y t⁥⁥⁥⁥⁥⁥h⁥⁥⁥⁥e", "⁥⁥Р⁥⁥⁥⁥⁥⁥⁥Е⁥⁥⁥⁥⁥⁥NIS."},
	{"Do you like bacon? Wanna.. strip?",    "Dо you like bа⁥⁥⁥⁥cоn?", "Wаnnа..", "s⁥⁥⁥⁥⁥⁥triр?"},
	{"Pretend Im a pirate and give me that booty.",    "Pr⁥еtenԁ lm а pirаt⁥е", "⁥⁥а⁥⁥⁥⁥⁥nԁ giv⁥е m⁥е th⁥⁥а⁥⁥⁥⁥⁥t", "bооty."},
	{"Are you feeling down? Because Id happily fill you up with CUM.",   "аre yоu f⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥еlI⁥⁥⁥⁥⁥ing dоwn?", "B⁥⁥⁥⁥⁥⁥еcаuse I⁥⁥⁥⁥⁥⁥d hаpp⁥Ily fI⁥I⁥⁥⁥⁥⁥⁥l y⁥⁥⁥⁥⁥о⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥υ⁥⁥ ⁥⁥υ⁥⁥р⁥⁥⁥⁥⁥ w⁥Ith", "СUМ."},
	{"Fuck me if Im wrong, but arent you Betty White?", "F⁥⁥υ⁥⁥с⁥⁥⁥⁥⁥⁥⁥Ꮶ М⁥⁥⁥⁥⁥⁥e⁥", "if Im wrong, but", "arent you ⁥⁥В⁥⁥⁥⁥⁥⁥еtty Wһ⁥⁥⁥⁥⁥⁥it⁥⁥е?"}
}

for i, v in pairs(TableOfHaRIZZment) do
    HaRIZZment:CreateParagraph({
        Title = "Message",
        Content = v[1],
    }, HaRIZZmentSection2)

	HaRIZZment:CreateButton({
		Name = "Send Message",
		Interact = "Chat",
        SectionParent = HaRIZZmentSection2,
		Callback = function()
			for i, d in pairs(v) do
				if d ~= v[1] then
					Chat(d)
					wait(1.5)
				end
			end
		end,
	})
end