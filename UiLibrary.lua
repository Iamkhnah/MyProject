-- cre: Redz
local MarketplaceService = game:GetService("MarketplaceService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlayerMouse = Player:GetMouse()

local redzlib = {
  Themes = {
    Darker = {
      ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 25)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(32.5, 32.5, 32.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 25, 25))
      }),
      ["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
      ["Color Stroke"] = Color3.fromRGB(40, 40, 40),
      ["Color Theme"] = Color3.fromRGB(88, 101, 242),
      ["Color Text"] = Color3.fromRGB(243, 243, 243),
      ["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
    },
    Dark = {
      ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 40, 40)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(47.5, 47.5, 47.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(40, 40, 40))
      }),
      ["Color Hub 2"] = Color3.fromRGB(45, 45, 45),
      ["Color Stroke"] = Color3.fromRGB(65, 65, 65),
      ["Color Theme"] = Color3.fromRGB(65, 150, 255),
      ["Color Text"] = Color3.fromRGB(245, 245, 245),
      ["Color Dark Text"] = Color3.fromRGB(190, 190, 190)
    },
    Purple = {
      ["Color Hub 1"] = ColorSequence.new({
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(27.5, 25, 30)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(32.5, 32.5, 32.5)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27.5, 25, 30))
      }),
      ["Color Hub 2"] = Color3.fromRGB(30, 30, 30),
      ["Color Stroke"] = Color3.fromRGB(40, 40, 40),
      ["Color Theme"] = Color3.fromRGB(150, 0, 255),
      ["Color Text"] = Color3.fromRGB(240, 240, 240),
      ["Color Dark Text"] = Color3.fromRGB(180, 180, 180)
    }
  },
  Info = {
    Version = "1.1.0"
  },
  Save = {
    UISize = {550, 380},
    TabSize = 160,
    Theme = "Darker"
  },
  Settings = {},
  Connection = {},
  Instances = {},
  Elements = {},
  Options = {},
  Flags = {},
  Tabs = {},
  Icons = {
    ["lucide-accessibility"] = "rbxassetid://10709751939",
    ["lucide-activity"] = "rbxassetid://10709752035",
    ["lucide-air-vent"] = "rbxassetid://10709752131",
    ["lucide-airplay"] = "rbxassetid://10709752254",
    ["lucide-alarm-check"] = "rbxassetid://10709752405",
    ["lucide-alarm-clock"] = "rbxassetid://10709752630",
    ["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
    ["lucide-alarm-minus"] = "rbxassetid://10709752732",
    ["lucide-alarm-plus"] = "rbxassetid://10709752825",
    ["lucide-album"] = "rbxassetid://10709752906",
    ["lucide-alert-circle"] = "rbxassetid://10709752996",
    ["lucide-alert-octagon"] = "rbxassetid://10709753064",
    ["lucide-alert-triangle"] = "rbxassetid://10709753149",
    ["lucide-align-center"] = "rbxassetid://10709753570",
    ["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
    ["lucide-align-center-vertical"] = "rbxassetid://10709753421",
    ["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
    ["lucide-align-end-vertical"] = "rbxassetid://10709753808",
    ["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
    ["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
    ["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
    ["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
    ["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
    ["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
    ["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
    ["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
    ["lucide-align-justify"] = "rbxassetid://10709759610",
    ["lucide-align-left"] = "rbxassetid://10709759764",
    ["lucide-align-right"] = "rbxassetid://10709759895",
    ["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
    ["lucide-align-start-vertical"] = "rbxassetid://10709760244",
    ["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
    ["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
    ["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
    ["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
    ["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
    ["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
    ["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
    ["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
    ["lucide-anchor"] = "rbxassetid://10709761530",
    ["lucide-angry"] = "rbxassetid://10709761629",
    ["lucide-annoyed"] = "rbxassetid://10709761722",
    ["lucide-aperture"] = "rbxassetid://10709761813",
    ["lucide-apple"] = "rbxassetid://10709761889",
    ["lucide-archive"] = "rbxassetid://10709762233",
    ["lucide-archive-restore"] = "rbxassetid://10709762058",
    ["lucide-armchair"] = "rbxassetid://10709762327",
    ["lucide-arrow-big-down"] = "rbxassetid://10747796644",
    ["lucide-arrow-big-left"] = "rbxassetid://10709762574",
    ["lucide-arrow-big-right"] = "rbxassetid://10709762727",
    ["lucide-arrow-big-up"] = "rbxassetid://10709762879",
    ["lucide-arrow-down"] = "rbxassetid://10709767827",
    ["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
    ["lucide-arrow-down-left"] = "rbxassetid://10709767656",
    ["lucide-arrow-down-right"] = "rbxassetid://10709767750",
    ["lucide-arrow-left"] = "rbxassetid://10709768114",
    ["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
    ["lucide-arrow-left-right"] = "rbxassetid://10709768019",
    ["lucide-arrow-right"] = "rbxassetid://10709768347",
    ["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
    ["lucide-arrow-up"] = "rbxassetid://10709768939",
    ["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
    ["lucide-arrow-up-down"] = "rbxassetid://10709768538",
    ["lucide-arrow-up-left"] = "rbxassetid://10709768661",
    ["lucide-arrow-up-right"] = "rbxassetid://10709768787",
    ["lucide-asterisk"] = "rbxassetid://10709769095",
    ["lucide-at-sign"] = "rbxassetid://10709769286",
    ["lucide-award"] = "rbxassetid://10709769406",
    ["lucide-axe"] = "rbxassetid://10709769508",
    ["lucide-axis-3d"] = "rbxassetid://10709769598",
    ["lucide-baby"] = "rbxassetid://10709769732",
    ["lucide-backpack"] = "rbxassetid://10709769841",
    ["lucide-baggage-claim"] = "rbxassetid://10709769935",
    ["lucide-banana"] = "rbxassetid://10709770005",
    ["lucide-banknote"] = "rbxassetid://10709770178",
    ["lucide-bar-chart"] = "rbxassetid://10709773755",
    ["lucide-bar-chart-2"] = "rbxassetid://10709770317",
    ["lucide-bar-chart-3"] = "rbxassetid://10709770431",
    ["lucide-bar-chart-4"] = "rbxassetid://10709770560",
    ["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
    ["lucide-barcode"] = "rbxassetid://10747360675",
    ["lucide-baseline"] = "rbxassetid://10709773863",
    ["lucide-bath"] = "rbxassetid://10709773963",
    ["lucide-battery"] = "rbxassetid://10709774640",
    ["lucide-battery-charging"] = "rbxassetid://10709774068",
    ["lucide-battery-full"] = "rbxassetid://10709774206",
    ["lucide-battery-low"] = "rbxassetid://10709774370",
    ["lucide-battery-medium"] = "rbxassetid://10709774513",
    ["lucide-beaker"] = "rbxassetid://10709774756",
    ["lucide-bed"] = "rbxassetid://10709775036",
    ["lucide-bed-double"] = "rbxassetid://10709774864",
    ["lucide-bed-single"] = "rbxassetid://10709774968",
    ["lucide-beer"] = "rbxassetid://10709775167",
    ["lucide-bell"] = "rbxassetid://10709775704",
    ["lucide-bell-minus"] = "rbxassetid://10709775241",
    ["lucide-bell-off"] = "rbxassetid://10709775320",
    ["lucide-bell-plus"] = "rbxassetid://10709775448",
    ["lucide-bell-ring"] = "rbxassetid://10709775560",
    ["lucide-bike"] = "rbxassetid://10709775894",
    ["lucide-binary"] = "rbxassetid://10709776050",
    ["lucide-bitcoin"] = "rbxassetid://10709776126",
    ["lucide-bluetooth"] = "rbxassetid://10709776655",
    ["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
    ["lucide-bluetooth-off"] = "rbxassetid://10709776344",
    ["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
    ["lucide-bold"] = "rbxassetid://10747813908",
    ["lucide-bomb"] = "rbxassetid://10709781460",
    ["lucide-bone"] = "rbxassetid://10709781605",
    ["lucide-book"] = "rbxassetid://10709781824",
    ["lucide-book-open"] = "rbxassetid://10709781717",
    ["lucide-bookmark"] = "rbxassetid://10709782154",
    ["lucide-bookmark-minus"] = "rbxassetid://10709781919",
    ["lucide-bookmark-plus"] = "rbxassetid://10709782044",
    ["lucide-bot"] = "rbxassetid://10709782230",
    ["lucide-box"] = "rbxassetid://10709782497",
    ["lucide-box-select"] = "rbxassetid://10709782342",
    ["lucide-boxes"] = "rbxassetid://10709782582",
    ["lucide-briefcase"] = "rbxassetid://10709782662",
    ["lucide-brush"] = "rbxassetid://10709782758",
    ["lucide-bug"] = "rbxassetid://10709782845",
    ["lucide-building"] = "rbxassetid://10709783051",
    ["lucide-building-2"] = "rbxassetid://10709782939",
    ["lucide-bus"] = "rbxassetid://10709783137",
    ["lucide-cake"] = "rbxassetid://10709783217",
    ["lucide-calculator"] = "rbxassetid://10709783311",
    ["lucide-calendar"] = "rbxassetid://10709789505",
    ["lucide-calendar-check"] = "rbxassetid://10709783474",
    ["lucide-calendar-check-2"] = "rbxassetid://10709783392",
    ["lucide-calendar-clock"] = "rbxassetid://10709783577",
    ["lucide-calendar-days"] = "rbxassetid://10709783673",
    ["lucide-calendar-heart"] = "rbxassetid://10709783835",
    ["lucide-calendar-minus"] = "rbxassetid://10709783959",
    ["lucide-calendar-off"] = "rbxassetid://10709788784",
    ["lucide-calendar-plus"] = "rbxassetid://10709788937",
    ["lucide-calendar-range"] = "rbxassetid://10709789053",
    ["lucide-calendar-search"] = "rbxassetid://10709789200",
    ["lucide-calendar-x"] = "rbxassetid://10709789407",
    ["lucide-calendar-x-2"] = "rbxassetid://10709789329",
    ["lucide-camera"] = "rbxassetid://10709789686",
    ["lucide-camera-off"] = "rbxassetid://10747822677",
    ["lucide-car"] = "rbxassetid://10709789810",
    ["lucide-carrot"] = "rbxassetid://10709789960",
    ["lucide-cast"] = "rbxassetid://10709790097",
    ["lucide-charge"] = "rbxassetid://10709790202",
    ["lucide-check"] = "rbxassetid://10709790644",
    ["lucide-check-circle"] = "rbxassetid://10709790387",
    ["lucide-check-circle-2"] = "rbxassetid://10709790298",
    ["lucide-check-square"] = "rbxassetid://10709790537",
    ["lucide-chef-hat"] = "rbxassetid://10709790757",
    ["lucide-cherry"] = "rbxassetid://10709790875",
    ["lucide-chevron-down"] = "rbxassetid://10709790948",
    ["lucide-chevron-first"] = "rbxassetid://10709791015",
    ["lucide-chevron-last"] = "rbxassetid://10709791130",
    ["lucide-chevron-left"] = "rbxassetid://10709791281",
    ["lucide-chevron-right"] = "rbxassetid://10709791437",
    ["lucide-chevron-up"] = "rbxassetid://10709791523",
    ["lucide-chevrons-down"] = "rbxassetid://10709796864",
    ["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
    ["lucide-chevrons-left"] = "rbxassetid://10709797151",
    ["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
    ["lucide-chevrons-right"] = "rbxassetid://10709797382",
    ["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
    ["lucide-chevrons-up"] = "rbxassetid://10709797622",
    ["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
    ["lucide-chrome"] = "rbxassetid://10709797725",
    ["lucide-circle"] = "rbxassetid://10709798174",
    ["lucide-circle-dot"] = "rbxassetid://10709797837",
    ["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
    ["lucide-circle-slashed"] = "rbxassetid://10709798100",
    ["lucide-citrus"] = "rbxassetid://10709798276",
    ["lucide-clapperboard"] = "rbxassetid://10709798350",
    ["lucide-clipboard"] = "rbxassetid://10709799288",
    ["lucide-clipboard-check"] = "rbxassetid://10709798443",
    ["lucide-clipboard-copy"] = "rbxassetid://10709798574",
    ["lucide-clipboard-edit"] = "rbxassetid://10709798682",
    ["lucide-clipboard-list"] = "rbxassetid://10709798792",
    ["lucide-clipboard-signature"] = "rbxassetid://10709798890",
    ["lucide-clipboard-type"] = "rbxassetid://10709798999",
    ["lucide-clipboard-x"] = "rbxassetid://10709799124",
    ["lucide-clock"] = "rbxassetid://10709805144",
    ["lucide-clock-1"] = "rbxassetid://10709799535",
    ["lucide-clock-10"] = "rbxassetid://10709799718",
    ["lucide-clock-11"] = "rbxassetid://10709799818",
    ["lucide-clock-12"] = "rbxassetid://10709799962",
    ["lucide-clock-2"] = "rbxassetid://10709803876",
    ["lucide-clock-3"] = "rbxassetid://10709803989",
    ["lucide-clock-4"] = "rbxassetid://10709804164",
    ["lucide-clock-5"] = "rbxassetid://10709804291",
    ["lucide-clock-6"] = "rbxassetid://10709804435",
    ["lucide-clock-7"] = "rbxassetid://10709804599",
    ["lucide-clock-8"] = "rbxassetid://10709804784",
    ["lucide-clock-9"] = "rbxassetid://10709804996",
    ["lucide-cloud"] = "rbxassetid://10709806740",
    ["lucide-cloud-cog"] = "rbxassetid://10709805262",
    ["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
    ["lucide-cloud-fog"] = "rbxassetid://10709805477",
    ["lucide-cloud-hail"] = "rbxassetid://10709805596",
    ["lucide-cloud-lightning"] = "rbxassetid://10709805727",
    ["lucide-cloud-moon"] = "rbxassetid://10709805942",
    ["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
    ["lucide-cloud-off"] = "rbxassetid://10709806060",
    ["lucide-cloud-rain"] = "rbxassetid://10709806277",
    ["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
    ["lucide-cloud-snow"] = "rbxassetid://10709806374",
    ["lucide-cloud-sun"] = "rbxassetid://10709806631",
    ["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
    ["lucide-cloudy"] = "rbxassetid://10709806859",
    ["lucide-clover"] = "rbxassetid://10709806995",
    ["lucide-code"] = "rbxassetid://10709810463",
    ["lucide-code-2"] = "rbxassetid://10709807111",
    ["lucide-codepen"] = "rbxassetid://10709810534",
    ["lucide-codesandbox"] = "rbxassetid://10709810676",
    ["lucide-coffee"] = "rbxassetid://10709810814",
    ["lucide-cog"] = "rbxassetid://10709810948",
    ["lucide-coins"] = "rbxassetid://10709811110",
    ["lucide-columns"] = "rbxassetid://10709811261",
    ["lucide-command"] = "rbxassetid://10709811365",
    ["lucide-compass"] = "rbxassetid://10709811445",
    ["lucide-component"] = "rbxassetid://10709811595",
    ["lucide-concierge-bell"] = "rbxassetid://10709811706",
    ["lucide-connection"] = "rbxassetid://10747361219",
    ["lucide-contact"] = "rbxassetid://10709811834",
    ["lucide-contrast"] = "rbxassetid://10709811939",
    ["lucide-cookie"] = "rbxassetid://10709812067",
    ["lucide-copy"] = "rbxassetid://10709812159",
    ["lucide-copyleft"] = "rbxassetid://10709812251",
    ["lucide-copyright"] = "rbxassetid://10709812311",
    ["lucide-corner-down-left"] = "rbxassetid://10709812396",
    ["lucide-corner-down-right"] = "rbxassetid://10709812485",
    ["lucide-corner-left-down"] = "rbxassetid://10709812632",
    ["lucide-corner-left-up"] = "rbxassetid://10709812784",
    ["lucide-corner-right-down"] = "rbxassetid://10709812939",
    ["lucide-corner-right-up"] = "rbxassetid://10709813094",
    ["lucide-corner-up-left"] = "rbxassetid://10709813185",
    ["lucide-corner-up-right"] = "rbxassetid://10709813281",
    ["lucide-cpu"] = "rbxassetid://10709813383",
    ["lucide-croissant"] = "rbxassetid://10709818125",
    ["lucide-crop"] = "rbxassetid://10709818245",
    ["lucide-cross"] = "rbxassetid://10709818399",
    ["lucide-crosshair"] = "rbxassetid://10709818534",
    ["lucide-crown"] = "rbxassetid://10709818626",
    ["lucide-cup-soda"] = "rbxassetid://10709818763",
    ["lucide-curly-braces"] = "rbxassetid://10709818847",
    ["lucide-currency"] = "rbxassetid://10709818931",
    ["lucide-database"] = "rbxassetid://10709818996",
    ["lucide-delete"] = "rbxassetid://10709819059",
    ["lucide-diamond"] = "rbxassetid://10709819149",
    ["lucide-dice-1"] = "rbxassetid://10709819266",
    ["lucide-dice-2"] = "rbxassetid://10709819361",
    ["lucide-dice-3"] = "rbxassetid://10709819508",
    ["lucide-dice-4"] = "rbxassetid://10709819670",
    ["lucide-dice-5"] = "rbxassetid://10709819801",
    ["lucide-dice-6"] = "rbxassetid://10709819896",
    ["lucide-dices"] = "rbxassetid://10723343321",
    ["lucide-diff"] = "rbxassetid://10723343416",
    ["lucide-disc"] = "rbxassetid://10723343537",
    ["lucide-divide"] = "rbxassetid://10723343805",
    ["lucide-divide-circle"] = "rbxassetid://10723343636",
    ["lucide-divide-square"] = "rbxassetid://10723343737",
    ["lucide-dollar-sign"] = "rbxassetid://10723343958",
    ["lucide-download"] = "rbxassetid://10723344270",
    ["lucide-download-cloud"] = "rbxassetid://10723344088",
    ["lucide-droplet"] = "rbxassetid://10723344432",
    ["lucide-droplets"] = "rbxassetid://10734883356",
    ["lucide-drumstick"] = "rbxassetid://10723344737",
    ["lucide-edit"] = "rbxassetid://10734883598",
    ["lucide-edit-2"] = "rbxassetid://10723344885",
    ["lucide-edit-3"] = "rbxassetid://10723345088",
    ["lucide-egg"] = "rbxassetid://10723345518",
    ["lucide-egg-fried"] = "rbxassetid://10723345347",
    ["lucide-electricity"] = "rbxassetid://10723345749",
    ["lucide-electricity-off"] = "rbxassetid://10723345643",
    ["lucide-equal"] = "rbxassetid://10723345990",
    ["lucide-equal-not"] = "rbxassetid://10723345866",
    ["lucide-eraser"] = "rbxassetid://10723346158",
    ["lucide-euro"] = "rbxassetid://10723346372",
    ["lucide-expand"] = "rbxassetid://10723346553",
    ["lucide-external-link"] = "rbxassetid://10723346684",
    ["lucide-eye"] = "rbxassetid://10723346959",
    ["lucide-eye-off"] = "rbxassetid://10723346871",
    ["lucide-factory"] = "rbxassetid://10723347051",
    ["lucide-fan"] = "rbxassetid://10723354359",
    ["lucide-fast-forward"] = "rbxassetid://10723354521",
    ["lucide-feather"] = "rbxassetid://10723354671",
    ["lucide-figma"] = "rbxassetid://10723354801",
    ["lucide-file"] = "rbxassetid://10723374641",
    ["lucide-file-archive"] = "rbxassetid://10723354921",
    ["lucide-file-audio"] = "rbxassetid://10723355148",
    ["lucide-file-audio-2"] = "rbxassetid://10723355026",
    ["lucide-file-axis-3d"] = "rbxassetid://10723355272",
    ["lucide-file-badge"] = "rbxassetid://10723355622",
    ["lucide-file-badge-2"] = "rbxassetid://10723355451",
    ["lucide-file-bar-chart"] = "rbxassetid://10723355887",
    ["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
    ["lucide-file-box"] = "rbxassetid://10723355989",
    ["lucide-file-check"] = "rbxassetid://10723356210",
    ["lucide-file-check-2"] = "rbxassetid://10723356100",
    ["lucide-file-clock"] = "rbxassetid://10723356329",
    ["lucide-file-code"] = "rbxassetid://10723356507",
    ["lucide-file-cog"] = "rbxassetid://10723356830",
    ["lucide-file-cog-2"] = "rbxassetid://10723356676",
    ["lucide-file-diff"] = "rbxassetid://10723357039",
    ["lucide-file-digit"] = "rbxassetid://10723357151",
    ["lucide-file-down"] = "rbxassetid://10723357322",
    ["lucide-file-edit"] = "rbxassetid://10723357495",
    ["lucide-file-heart"] = "rbxassetid://10723357637",
    ["lucide-file-image"] = "rbxassetid://10723357790",
    ["lucide-file-input"] = "rbxassetid://10723357933",
    ["lucide-file-json"] = "rbxassetid://10723364435",
    ["lucide-file-json-2"] = "rbxassetid://10723364361",
    ["lucide-file-key"] = "rbxassetid://10723364605",
    ["lucide-file-key-2"] = "rbxassetid://10723364515",
    ["lucide-file-line-chart"] = "rbxassetid://10723364725",
    ["lucide-file-lock"] = "rbxassetid://10723364957",
    ["lucide-file-lock-2"] = "rbxassetid://10723364861",
    ["lucide-file-minus"] = "rbxassetid://10723365254",
    ["lucide-file-minus-2"] = "rbxassetid://10723365086",
    ["lucide-file-output"] = "rbxassetid://10723365457",
    ["lucide-file-pie-chart"] = "rbxassetid://10723365598",
    ["lucide-file-plus"] = "rbxassetid://10723365877",
    ["lucide-file-plus-2"] = "rbxassetid://10723365766",
    ["lucide-file-question"] = "rbxassetid://10723365987",
    ["lucide-file-scan"] = "rbxassetid://10723366167",
    ["lucide-file-search"] = "rbxassetid://10723366550",
    ["lucide-file-search-2"] = "rbxassetid://10723366340",
    ["lucide-file-signature"] = "rbxassetid://10723366741",
    ["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
    ["lucide-file-symlink"] = "rbxassetid://10723367098",
    ["lucide-file-terminal"] = "rbxassetid://10723367244",
    ["lucide-file-text"] = "rbxassetid://10723367380",
    ["lucide-file-type"] = "rbxassetid://10723367606",
    ["lucide-file-type-2"] = "rbxassetid://10723367509",
    ["lucide-file-up"] = "rbxassetid://10723367734",
    ["lucide-file-video"] = "rbxassetid://10723373884",
    ["lucide-file-video-2"] = "rbxassetid://10723367834",
    ["lucide-file-volume"] = "rbxassetid://10723374172",
    ["lucide-file-volume-2"] = "rbxassetid://10723374030",
    ["lucide-file-warning"] = "rbxassetid://10723374276",
    ["lucide-file-x"] = "rbxassetid://10723374544",
    ["lucide-file-x-2"] = "rbxassetid://10723374378",
    ["lucide-files"] = "rbxassetid://10723374759",
    ["lucide-film"] = "rbxassetid://10723374981",
    ["lucide-filter"] = "rbxassetid://10723375128",
    ["lucide-fingerprint"] = "rbxassetid://10723375250",
    ["lucide-flag"] = "rbxassetid://10723375890",
    ["lucide-flag-off"] = "rbxassetid://10723375443",
    ["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
    ["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
    ["lucide-flame"] = "rbxassetid://10723376114",
    ["lucide-flashlight"] = "rbxassetid://10723376471",
    ["lucide-flashlight-off"] = "rbxassetid://10723376365",
    ["lucide-flask-conical"] = "rbxassetid://10734883986",
    ["lucide-flask-round"] = "rbxassetid://10723376614",
    ["lucide-flip-horizontal"] = "rbxassetid://10723376884",
    ["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
    ["lucide-flip-vertical"] = "rbxassetid://10723377138",
    ["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
    ["lucide-flower"] = "rbxassetid://10747830374",
    ["lucide-flower-2"] = "rbxassetid://10723377305",
    ["lucide-focus"] = "rbxassetid://10723377537",
    ["lucide-folder"] = "rbxassetid://10723387563",
    ["lucide-folder-archive"] = "rbxassetid://10723384478",
    ["lucide-folder-check"] = "rbxassetid://10723384605",
    ["lucide-folder-clock"] = "rbxassetid://10723384731",
    ["lucide-folder-closed"] = "rbxassetid://10723384893",
    ["lucide-folder-cog"] = "rbxassetid://10723385213",
    ["lucide-folder-cog-2"] = "rbxassetid://10723385036",
    ["lucide-folder-down"] = "rbxassetid://10723385338",
    ["lucide-folder-edit"] = "rbxassetid://10723385445",
    ["lucide-folder-heart"] = "rbxassetid://10723385545",
    ["lucide-folder-input"] = "rbxassetid://10723385721",
    ["lucide-folder-key"] = "rbxassetid://10723385848",
    ["lucide-folder-lock"] = "rbxassetid://10723386005",
    ["lucide-folder-minus"] = "rbxassetid://10723386127",
    ["lucide-folder-open"] = "rbxassetid://10723386277",
    ["lucide-folder-output"] = "rbxassetid://10723386386",
    ["lucide-folder-plus"] = "rbxassetid://10723386531",
    ["lucide-folder-search"] = "rbxassetid://10723386787",
    ["lucide-folder-search-2"] = "rbxassetid://10723386674",
    ["lucide-folder-symlink"] = "rbxassetid://10723386930",
    ["lucide-folder-tree"] = "rbxassetid://10723387085",
    ["lucide-folder-up"] = "rbxassetid://10723387265",
    ["lucide-folder-x"] = "rbxassetid://10723387448",
    ["lucide-folders"] = "rbxassetid://10723387721",
    ["lucide-form-input"] = "rbxassetid://10723387841",
    ["lucide-forward"] = "rbxassetid://10723388016",
    ["lucide-frame"] = "rbxassetid://10723394389",
    ["lucide-framer"] = "rbxassetid://10723394565",
    ["lucide-frown"] = "rbxassetid://10723394681",
    ["lucide-fuel"] = "rbxassetid://10723394846",
    ["lucide-function-square"] = "rbxassetid://10723395041",
    ["lucide-gamepad"] = "rbxassetid://10723395457",
    ["lucide-gamepad-2"] = "rbxassetid://10723395215",
    ["lucide-gauge"] = "rbxassetid://10723395708",
    ["lucide-gavel"] = "rbxassetid://10723395896",
    ["lucide-gem"] = "rbxassetid://10723396000",
    ["lucide-ghost"] = "rbxassetid://10723396107",
    ["lucide-gift"] = "rbxassetid://10723396402",
    ["lucide-gift-card"] = "rbxassetid://10723396225",
    ["lucide-git-branch"] = "rbxassetid://10723396676",
    ["lucide-git-branch-plus"] = "rbxassetid://10723396542",
    ["lucide-git-commit"] = "rbxassetid://10723396812",
    ["lucide-git-compare"] = "rbxassetid://10723396954",
    ["lucide-git-fork"] = "rbxassetid://10723397049",
    ["lucide-git-merge"] = "rbxassetid://10723397165",
    ["lucide-git-pull-request"] = "rbxassetid://10723397431",
    ["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
    ["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
    ["lucide-glass"] = "rbxassetid://10723397788",
    ["lucide-glass-2"] = "rbxassetid://10723397529",
    ["lucide-glass-water"] = "rbxassetid://10723397678",
    ["lucide-glasses"] = "rbxassetid://10723397895",
    ["lucide-globe"] = "rbxassetid://10723404337",
    ["lucide-globe-2"] = "rbxassetid://10723398002",
    ["lucide-grab"] = "rbxassetid://10723404472",
    ["lucide-graduation-cap"] = "rbxassetid://10723404691",
    ["lucide-grape"] = "rbxassetid://10723404822",
    ["lucide-grid"] = "rbxassetid://10723404936",
    ["lucide-grip-horizontal"] = "rbxassetid://10723405089",
    ["lucide-grip-vertical"] = "rbxassetid://10723405236",
    ["lucide-hammer"] = "rbxassetid://10723405360",
    ["lucide-hand"] = "rbxassetid://10723405649",
    ["lucide-hand-metal"] = "rbxassetid://10723405508",
    ["lucide-hard-drive"] = "rbxassetid://10723405749",
    ["lucide-hard-hat"] = "rbxassetid://10723405859",
    ["lucide-hash"] = "rbxassetid://10723405975",
    ["lucide-haze"] = "rbxassetid://10723406078",
    ["lucide-headphones"] = "rbxassetid://10723406165",
    ["lucide-heart"] = "rbxassetid://10723406885",
    ["lucide-heart-crack"] = "rbxassetid://10723406299",
    ["lucide-heart-handshake"] = "rbxassetid://10723406480",
    ["lucide-heart-off"] = "rbxassetid://10723406662",
    ["lucide-heart-pulse"] = "rbxassetid://10723406795",
    ["lucide-help-circle"] = "rbxassetid://10723406988",
    ["lucide-hexagon"] = "rbxassetid://10723407092",
    ["lucide-highlighter"] = "rbxassetid://10723407192",
    ["lucide-history"] = "rbxassetid://10723407335",
    ["lucide-home"] = "rbxassetid://10723407389",
    ["lucide-hourglass"] = "rbxassetid://10723407498",
    ["lucide-ice-cream"] = "rbxassetid://10723414308",
    ["lucide-image"] = "rbxassetid://10723415040",
    ["lucide-image-minus"] = "rbxassetid://10723414487",
    ["lucide-image-off"] = "rbxassetid://10723414677",
    ["lucide-image-plus"] = "rbxassetid://10723414827",
    ["lucide-import"] = "rbxassetid://10723415205",
    ["lucide-inbox"] = "rbxassetid://10723415335",
    ["lucide-indent"] = "rbxassetid://10723415494",
    ["lucide-indian-rupee"] = "rbxassetid://10723415642",
    ["lucide-infinity"] = "rbxassetid://10723415766",
    ["lucide-info"] = "rbxassetid://10723415903",
    ["lucide-inspect"] = "rbxassetid://10723416057",
    ["lucide-italic"] = "rbxassetid://10723416195",
    ["lucide-japanese-yen"] = "rbxassetid://10723416363",
    ["lucide-joystick"] = "rbxassetid://10723416527",
    ["lucide-key"] = "rbxassetid://10723416652",
    ["lucide-keyboard"] = "rbxassetid://10723416765",
    ["lucide-lamp"] = "rbxassetid://10723417513",
    ["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
    ["lucide-lamp-desk"] = "rbxassetid://10723417016",
    ["lucide-lamp-floor"] = "rbxassetid://10723417131",
    ["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
    ["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
    ["lucide-landmark"] = "rbxassetid://10723417608",
    ["lucide-languages"] = "rbxassetid://10723417703",
    ["lucide-laptop"] = "rbxassetid://10723423881",
    ["lucide-laptop-2"] = "rbxassetid://10723417797",
    ["lucide-lasso"] = "rbxassetid://10723424235",
    ["lucide-lasso-select"] = "rbxassetid://10723424058",
    ["lucide-laugh"] = "rbxassetid://10723424372",
    ["lucide-layers"] = "rbxassetid://10723424505",
    ["lucide-layout"] = "rbxassetid://10723425376",
    ["lucide-layout-dashboard"] = "rbxassetid://10723424646",
    ["lucide-layout-grid"] = "rbxassetid://10723424838",
    ["lucide-layout-list"] = "rbxassetid://10723424963",
    ["lucide-layout-template"] = "rbxassetid://10723425187",
    ["lucide-leaf"] = "rbxassetid://10723425539",
    ["lucide-library"] = "rbxassetid://10723425615",
    ["lucide-life-buoy"] = "rbxassetid://10723425685",
    ["lucide-lightbulb"] = "rbxassetid://10723425852",
    ["lucide-lightbulb-off"] = "rbxassetid://10723425762",
    ["lucide-line-chart"] = "rbxassetid://10723426393",
    ["lucide-link"] = "rbxassetid://10723426722",
    ["lucide-link-2"] = "rbxassetid://10723426595",
    ["lucide-link-2-off"] = "rbxassetid://10723426513",
    ["lucide-list"] = "rbxassetid://10723433811",
    ["lucide-list-checks"] = "rbxassetid://10734884548",
    ["lucide-list-end"] = "rbxassetid://10723426886",
    ["lucide-list-minus"] = "rbxassetid://10723426986",
    ["lucide-list-music"] = "rbxassetid://10723427081",
    ["lucide-list-ordered"] = "rbxassetid://10723427199",
    ["lucide-list-plus"] = "rbxassetid://10723427334",
    ["lucide-list-start"] = "rbxassetid://10723427494",
    ["lucide-list-video"] = "rbxassetid://10723427619",
    ["lucide-list-x"] = "rbxassetid://10723433655",
    ["lucide-loader"] = "rbxassetid://10723434070",
    ["lucide-loader-2"] = "rbxassetid://10723433935",
    ["lucide-locate"] = "rbxassetid://10723434557",
    ["lucide-locate-fixed"] = "rbxassetid://10723434236",
    ["lucide-locate-off"] = "rbxassetid://10723434379",
    ["lucide-lock"] = "rbxassetid://10723434711",
    ["lucide-log-in"] = "rbxassetid://10723434830",
    ["lucide-log-out"] = "rbxassetid://10723434906",
    ["lucide-luggage"] = "rbxassetid://10723434993",
    ["lucide-magnet"] = "rbxassetid://10723435069",
    ["lucide-mail"] = "rbxassetid://10734885430",
    ["lucide-mail-check"] = "rbxassetid://10723435182",
    ["lucide-mail-minus"] = "rbxassetid://10723435261",
    ["lucide-mail-open"] = "rbxassetid://10723435342",
    ["lucide-mail-plus"] = "rbxassetid://10723435443",
    ["lucide-mail-question"] = "rbxassetid://10723435515",
    ["lucide-mail-search"] = "rbxassetid://10734884739",
    ["lucide-mail-warning"] = "rbxassetid://10734885015",
    ["lucide-mail-x"] = "rbxassetid://10734885247",
    ["lucide-mails"] = "rbxassetid://10734885614",
    ["lucide-map"] = "rbxassetid://10734886202",
    ["lucide-map-pin"] = "rbxassetid://10734886004",
    ["lucide-map-pin-off"] = "rbxassetid://10734885803",
    ["lucide-maximize"] = "rbxassetid://10734886735",
    ["lucide-maximize-2"] = "rbxassetid://10734886496",
    ["lucide-medal"] = "rbxassetid://10734887072",
    ["lucide-megaphone"] = "rbxassetid://10734887454",
    ["lucide-megaphone-off"] = "rbxassetid://10734887311",
    ["lucide-meh"] = "rbxassetid://10734887603",
    ["lucide-menu"] = "rbxassetid://10734887784",
    ["lucide-message-circle"] = "rbxassetid://10734888000",
    ["lucide-message-square"] = "rbxassetid://10734888228",
    ["lucide-mic"] = "rbxassetid://10734888864",
    ["lucide-mic-2"] = "rbxassetid://10734888430",
    ["lucide-mic-off"] = "rbxassetid://10734888646",
    ["lucide-microscope"] = "rbxassetid://10734889106",
    ["lucide-microwave"] = "rbxassetid://10734895076",
    ["lucide-milestone"] = "rbxassetid://10734895310",
    ["lucide-minimize"] = "rbxassetid://10734895698",
    ["lucide-minimize-2"] = "rbxassetid://10734895530",
    ["lucide-minus"] = "rbxassetid://10734896206",
    ["lucide-minus-circle"] = "rbxassetid://10734895856",
    ["lucide-minus-square"] = "rbxassetid://10734896029",
    ["lucide-monitor"] = "rbxassetid://10734896881",
    ["lucide-monitor-off"] = "rbxassetid://10734896360",
    ["lucide-monitor-speaker"] = "rbxassetid://10734896512",
    ["lucide-moon"] = "rbxassetid://10734897102",
    ["lucide-more-horizontal"] = "rbxassetid://10734897250",
    ["lucide-more-vertical"] = "rbxassetid://10734897387",
    ["lucide-mountain"] = "rbxassetid://10734897956",
    ["lucide-mountain-snow"] = "rbxassetid://10734897665",
    ["lucide-mouse"] = "rbxassetid://10734898592",
    ["lucide-mouse-pointer"] = "rbxassetid://10734898476",
    ["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
    ["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
    ["lucide-move"] = "rbxassetid://10734900011",
    ["lucide-move-3d"] = "rbxassetid://10734898756",
    ["lucide-move-diagonal"] = "rbxassetid://10734899164",
    ["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
    ["lucide-move-horizontal"] = "rbxassetid://10734899414",
    ["lucide-move-vertical"] = "rbxassetid://10734899821",
    ["lucide-music"] = "rbxassetid://10734905958",
    ["lucide-music-2"] = "rbxassetid://10734900215",
    ["lucide-music-3"] = "rbxassetid://10734905665",
    ["lucide-music-4"] = "rbxassetid://10734905823",
    ["lucide-navigation"] = "rbxassetid://10734906744",
    ["lucide-navigation-2"] = "rbxassetid://10734906332",
    ["lucide-navigation-2-off"] = "rbxassetid://10734906144",
    ["lucide-navigation-off"] = "rbxassetid://10734906580",
    ["lucide-network"] = "rbxassetid://10734906975",
    ["lucide-newspaper"] = "rbxassetid://10734907168",
    ["lucide-octagon"] = "rbxassetid://10734907361",
    ["lucide-option"] = "rbxassetid://10734907649",
    ["lucide-outdent"] = "rbxassetid://10734907933",
    ["lucide-package"] = "rbxassetid://10734909540",
    ["lucide-package-2"] = "rbxassetid://10734908151",
    ["lucide-package-check"] = "rbxassetid://10734908384",
    ["lucide-package-minus"] = "rbxassetid://10734908626",
    ["lucide-package-open"] = "rbxassetid://10734908793",
    ["lucide-package-plus"] = "rbxassetid://10734909016",
    ["lucide-package-search"] = "rbxassetid://10734909196",
    ["lucide-package-x"] = "rbxassetid://10734909375",
    ["lucide-paint-bucket"] = "rbxassetid://10734909847",
    ["lucide-paintbrush"] = "rbxassetid://10734910187",
    ["lucide-paintbrush-2"] = "rbxassetid://10734910030",
    ["lucide-palette"] = "rbxassetid://10734910430",
    ["lucide-palmtree"] = "rbxassetid://10734910680",
    ["lucide-paperclip"] = "rbxassetid://10734910927",
    ["lucide-party-popper"] = "rbxassetid://10734918735",
    ["lucide-pause"] = "rbxassetid://10734919336",
    ["lucide-pause-circle"] = "rbxassetid://10735024209",
    ["lucide-pause-octagon"] = "rbxassetid://10734919143",
    ["lucide-pen-tool"] = "rbxassetid://10734919503",
    ["lucide-pencil"] = "rbxassetid://10734919691",
    ["lucide-percent"] = "rbxassetid://10734919919",
    ["lucide-person-standing"] = "rbxassetid://10734920149",
    ["lucide-phone"] = "rbxassetid://10734921524",
    ["lucide-phone-call"] = "rbxassetid://10734920305",
    ["lucide-phone-forwarded"] = "rbxassetid://10734920508",
    ["lucide-phone-incoming"] = "rbxassetid://10734920694",
    ["lucide-phone-missed"] = "rbxassetid://10734920845",
    ["lucide-phone-off"] = "rbxassetid://10734921077",
    ["lucide-phone-outgoing"] = "rbxassetid://10734921288",
    ["lucide-pie-chart"] = "rbxassetid://10734921727",
    ["lucide-piggy-bank"] = "rbxassetid://10734921935",
    ["lucide-pin"] = "rbxassetid://10734922324",
    ["lucide-pin-off"] = "rbxassetid://10734922180",
    ["lucide-pipette"] = "rbxassetid://10734922497",
    ["lucide-pizza"] = "rbxassetid://10734922774",
    ["lucide-plane"] = "rbxassetid://10734922971",
    ["lucide-play"] = "rbxassetid://10734923549",
    ["lucide-play-circle"] = "rbxassetid://10734923214",
    ["lucide-plus"] = "rbxassetid://10734924532",
    ["lucide-plus-circle"] = "rbxassetid://10734923868",
    ["lucide-plus-square"] = "rbxassetid://10734924219",
    ["lucide-podcast"] = "rbxassetid://10734929553",
    ["lucide-pointer"] = "rbxassetid://10734929723",
    ["lucide-pound-sterling"] = "rbxassetid://10734929981",
    ["lucide-power"] = "rbxassetid://10734930466",
    ["lucide-power-off"] = "rbxassetid://10734930257",
    ["lucide-printer"] = "rbxassetid://10734930632",
    ["lucide-puzzle"] = "rbxassetid://10734930886",
    ["lucide-quote"] = "rbxassetid://10734931234",
    ["lucide-radio"] = "rbxassetid://10734931596",
    ["lucide-radio-receiver"] = "rbxassetid://10734931402",
    ["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
    ["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
    ["lucide-recycle"] = "rbxassetid://10734932295",
    ["lucide-redo"] = "rbxassetid://10734932822",
    ["lucide-redo-2"] = "rbxassetid://10734932586",
    ["lucide-refresh-ccw"] = "rbxassetid://10734933056",
    ["lucide-refresh-cw"] = "rbxassetid://10734933222",
    ["lucide-refrigerator"] = "rbxassetid://10734933465",
    ["lucide-regex"] = "rbxassetid://10734933655",
    ["lucide-repeat"] = "rbxassetid://10734933966",
    ["lucide-repeat-1"] = "rbxassetid://10734933826",
    ["lucide-reply"] = "rbxassetid://10734934252",
    ["lucide-reply-all"] = "rbxassetid://10734934132",
    ["lucide-rewind"] = "rbxassetid://10734934347",
    ["lucide-rocket"] = "rbxassetid://10734934585",
    ["lucide-rocking-chair"] = "rbxassetid://10734939942",
    ["lucide-rotate-3d"] = "rbxassetid://10734940107",
    ["lucide-rotate-ccw"] = "rbxassetid://10734940376",
    ["lucide-rotate-cw"] = "rbxassetid://10734940654",
    ["lucide-rss"] = "rbxassetid://10734940825",
    ["lucide-ruler"] = "rbxassetid://10734941018",
    ["lucide-russian-ruble"] = "rbxassetid://10734941199",
    ["lucide-sailboat"] = "rbxassetid://10734941354",
    ["lucide-save"] = "rbxassetid://10734941499",
    ["lucide-scale"] = "rbxassetid://10734941912",
    ["lucide-scale-3d"] = "rbxassetid://10734941739",
    ["lucide-scaling"] = "rbxassetid://10734942072",
    ["lucide-scan"] = "rbxassetid://10734942565",
    ["lucide-scan-face"] = "rbxassetid://10734942198",
    ["lucide-scan-line"] = "rbxassetid://10734942351",
    ["lucide-scissors"] = "rbxassetid://10734942778",
    ["lucide-screen-share"] = "rbxassetid://10734943193",
    ["lucide-screen-share-off"] = "rbxassetid://10734942967",
    ["lucide-scroll"] = "rbxassetid://10734943448",
    ["lucide-search"] = "rbxassetid://10734943674",
    ["lucide-send"] = "rbxassetid://10734943902",
    ["lucide-separator-horizontal"] = "rbxassetid://10734944115",
    ["lucide-separator-vertical"] = "rbxassetid://10734944326",
    ["lucide-server"] = "rbxassetid://10734949856",
    ["lucide-server-cog"] = "rbxassetid://10734944444",
    ["lucide-server-crash"] = "rbxassetid://10734944554",
    ["lucide-server-off"] = "rbxassetid://10734944668",
    ["lucide-settings"] = "rbxassetid://10734950309",
    ["lucide-settings-2"] = "rbxassetid://10734950020",
    ["lucide-share"] = "rbxassetid://10734950813",
    ["lucide-share-2"] = "rbxassetid://10734950553",
    ["lucide-sheet"] = "rbxassetid://10734951038",
    ["lucide-shield"] = "rbxassetid://10734951847",
    ["lucide-shield-alert"] = "rbxassetid://10734951173",
    ["lucide-shield-check"] = "rbxassetid://10734951367",
    ["lucide-shield-close"] = "rbxassetid://10734951535",
    ["lucide-shield-off"] = "rbxassetid://10734951684",
    ["lucide-shirt"] = "rbxassetid://10734952036",
    ["lucide-shopping-bag"] = "rbxassetid://10734952273",
    ["lucide-shopping-cart"] = "rbxassetid://10734952479",
    ["lucide-shovel"] = "rbxassetid://10734952773",
    ["lucide-shower-head"] = "rbxassetid://10734952942",
    ["lucide-shrink"] = "rbxassetid://10734953073",
    ["lucide-shrub"] = "rbxassetid://10734953241",
    ["lucide-shuffle"] = "rbxassetid://10734953451",
    ["lucide-sidebar"] = "rbxassetid://10734954301",
    ["lucide-sidebar-close"] = "rbxassetid://10734953715",
    ["lucide-sidebar-open"] = "rbxassetid://10734954000",
    ["lucide-sigma"] = "rbxassetid://10734954538",
    ["lucide-signal"] = "rbxassetid://10734961133",
    ["lucide-signal-high"] = "rbxassetid://10734954807",
    ["lucide-signal-low"] = "rbxassetid://10734955080",
    ["lucide-signal-medium"] = "rbxassetid://10734955336",
    ["lucide-signal-zero"] = "rbxassetid://10734960878",
    ["lucide-siren"] = "rbxassetid://10734961284",
    ["lucide-skip-back"] = "rbxassetid://10734961526",
    ["lucide-skip-forward"] = "rbxassetid://10734961809",
    ["lucide-skull"] = "rbxassetid://10734962068",
    ["lucide-slack"] = "rbxassetid://10734962339",
    ["lucide-slash"] = "rbxassetid://10734962600",
    ["lucide-slice"] = "rbxassetid://10734963024",
    ["lucide-sliders"] = "rbxassetid://10734963400",
    ["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
    ["lucide-smartphone"] = "rbxassetid://10734963940",
    ["lucide-smartphone-charging"] = "rbxassetid://10734963671",
    ["lucide-smile"] = "rbxassetid://10734964441",
    ["lucide-smile-plus"] = "rbxassetid://10734964188",
    ["lucide-snowflake"] = "rbxassetid://10734964600",
    ["lucide-sofa"] = "rbxassetid://10734964852",
    ["lucide-sort-asc"] = "rbxassetid://10734965115",
    ["lucide-sort-desc"] = "rbxassetid://10734965287",
    ["lucide-speaker"] = "rbxassetid://10734965419",
    ["lucide-sprout"] = "rbxassetid://10734965572",
    ["lucide-square"] = "rbxassetid://10734965702",
    ["lucide-star"] = "rbxassetid://10734966248",
    ["lucide-star-half"] = "rbxassetid://10734965897",
    ["lucide-star-off"] = "rbxassetid://10734966097",
    ["lucide-stethoscope"] = "rbxassetid://10734966384",
    ["lucide-sticker"] = "rbxassetid://10734972234",
    ["lucide-sticky-note"] = "rbxassetid://10734972463",
    ["lucide-stop-circle"] = "rbxassetid://10734972621",
    ["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
    ["lucide-stretch-vertical"] = "rbxassetid://10734973130",
    ["lucide-strikethrough"] = "rbxassetid://10734973290",
    ["lucide-subscript"] = "rbxassetid://10734973457",
    ["lucide-sun"] = "rbxassetid://10734974297",
    ["lucide-sun-dim"] = "rbxassetid://10734973645",
    ["lucide-sun-medium"] = "rbxassetid://10734973778",
    ["lucide-sun-moon"] = "rbxassetid://10734973999",
    ["lucide-sun-snow"] = "rbxassetid://10734974130",
    ["lucide-sunrise"] = "rbxassetid://10734974522",
    ["lucide-sunset"] = "rbxassetid://10734974689",
    ["lucide-superscript"] = "rbxassetid://10734974850",
    ["lucide-swiss-franc"] = "rbxassetid://10734975024",
    ["lucide-switch-camera"] = "rbxassetid://10734975214",
    ["lucide-sword"] = "rbxassetid://10734975486",
    ["lucide-swords"] = "rbxassetid://10734975692",
    ["lucide-syringe"] = "rbxassetid://10734975932",
    ["lucide-table"] = "rbxassetid://10734976230",
    ["lucide-table-2"] = "rbxassetid://10734976097",
    ["lucide-tablet"] = "rbxassetid://10734976394",
    ["lucide-tag"] = "rbxassetid://10734976528",
    ["lucide-tags"] = "rbxassetid://10734976739",
    ["lucide-target"] = "rbxassetid://10734977012",
    ["lucide-tent"] = "rbxassetid://10734981750",
    ["lucide-terminal"] = "rbxassetid://10734982144",
    ["lucide-terminal-square"] = "rbxassetid://10734981995",
    ["lucide-text-cursor"] = "rbxassetid://10734982395",
    ["lucide-text-cursor-input"] = "rbxassetid://10734982297",
    ["lucide-thermometer"] = "rbxassetid://10734983134",
    ["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
    ["lucide-thermometer-sun"] = "rbxassetid://10734982771",
    ["lucide-thumbs-down"] = "rbxassetid://10734983359",
    ["lucide-thumbs-up"] = "rbxassetid://10734983629",
    ["lucide-ticket"] = "rbxassetid://10734983868",
    ["lucide-timer"] = "rbxassetid://10734984606",
    ["lucide-timer-off"] = "rbxassetid://10734984138",
    ["lucide-timer-reset"] = "rbxassetid://10734984355",
    ["lucide-toggle-left"] = "rbxassetid://10734984834",
    ["lucide-toggle-right"] = "rbxassetid://10734985040",
    ["lucide-tornado"] = "rbxassetid://10734985247",
    ["lucide-toy-brick"] = "rbxassetid://10747361919",
    ["lucide-train"] = "rbxassetid://10747362105",
    ["lucide-trash"] = "rbxassetid://10747362393",
    ["lucide-trash-2"] = "rbxassetid://10747362241",
    ["lucide-tree-deciduous"] = "rbxassetid://10747362534",
    ["lucide-tree-pine"] = "rbxassetid://10747362748",
    ["lucide-trees"] = "rbxassetid://10747363016",
    ["lucide-trending-down"] = "rbxassetid://10747363205",
    ["lucide-trending-up"] = "rbxassetid://10747363465",
    ["lucide-triangle"] = "rbxassetid://10747363621",
    ["lucide-trophy"] = "rbxassetid://10747363809",
    ["lucide-truck"] = "rbxassetid://10747364031",
    ["lucide-tv"] = "rbxassetid://10747364593",
    ["lucide-tv-2"] = "rbxassetid://10747364302",
    ["lucide-type"] = "rbxassetid://10747364761",
    ["lucide-umbrella"] = "rbxassetid://10747364971",
    ["lucide-underline"] = "rbxassetid://10747365191",
    ["lucide-undo"] = "rbxassetid://10747365484",
    ["lucide-undo-2"] = "rbxassetid://10747365359",
    ["lucide-unlink"] = "rbxassetid://10747365771",
    ["lucide-unlink-2"] = "rbxassetid://10747397871",
    ["lucide-unlock"] = "rbxassetid://10747366027",
    ["lucide-upload"] = "rbxassetid://10747366434",
    ["lucide-upload-cloud"] = "rbxassetid://10747366266",
    ["lucide-usb"] = "rbxassetid://10747366606",
    ["lucide-user"] = "rbxassetid://10747373176",
    ["lucide-user-check"] = "rbxassetid://10747371901",
    ["lucide-user-cog"] = "rbxassetid://10747372167",
    ["lucide-user-minus"] = "rbxassetid://10747372346",
    ["lucide-user-plus"] = "rbxassetid://10747372702",
    ["lucide-user-x"] = "rbxassetid://10747372992",
    ["lucide-users"] = "rbxassetid://10747373426",
    ["lucide-utensils"] = "rbxassetid://10747373821",
    ["lucide-utensils-crossed"] = "rbxassetid://10747373629",
    ["lucide-venetian-mask"] = "rbxassetid://10747374003",
    ["lucide-verified"] = "rbxassetid://10747374131",
    ["lucide-vibrate"] = "rbxassetid://10747374489",
    ["lucide-vibrate-off"] = "rbxassetid://10747374269",
    ["lucide-video"] = "rbxassetid://10747374938",
    ["lucide-video-off"] = "rbxassetid://10747374721",
    ["lucide-view"] = "rbxassetid://10747375132",
    ["lucide-voicemail"] = "rbxassetid://10747375281",
    ["lucide-volume"] = "rbxassetid://10747376008",
    ["lucide-volume-1"] = "rbxassetid://10747375450",
    ["lucide-volume-2"] = "rbxassetid://10747375679",
    ["lucide-volume-x"] = "rbxassetid://10747375880",
    ["lucide-wallet"] = "rbxassetid://10747376205",
    ["lucide-wand"] = "rbxassetid://10747376565",
    ["lucide-wand-2"] = "rbxassetid://10747376349",
    ["lucide-watch"] = "rbxassetid://10747376722",
    ["lucide-waves"] = "rbxassetid://10747376931",
    ["lucide-webcam"] = "rbxassetid://10747381992",
    ["lucide-wifi"] = "rbxassetid://10747382504",
    ["lucide-wifi-off"] = "rbxassetid://10747382268",
    ["lucide-wind"] = "rbxassetid://10747382750",
    ["lucide-wrap-text"] = "rbxassetid://10747383065",
    ["lucide-wrench"] = "rbxassetid://10747383470",
    ["lucide-x"] = "rbxassetid://10747384394",
    ["lucide-x-circle"] = "rbxassetid://10747383819",
    ["lucide-x-octagon"] = "rbxassetid://10747384037",
    ["lucide-x-square"] = "rbxassetid://10747384217",
    ["lucide-zoom-in"] = "rbxassetid://10747384552",
    ["lucide-zoom-out"] = "rbxassetid://10747384679"
  }
}

local ViewportSize = workspace.CurrentCamera.ViewportSize
local UIScale = ViewportSize.Y / 450

local Settings = redzlib.Settings
local Flags = redzlib.Flags

local SetProps, SetChildren, InsertTheme, Create do
  InsertTheme = function(Instance, Type)
    table.insert(redzlib.Instances, {
      Instance = Instance,
      Type = Type
    })
    return Instance
  end
  
  SetChildren = function(Instance, Children)
    if Children then
      table.foreach(Children, function(_,Child)
        Child.Parent = Instance
      end)
    end
    return Instance
  end
  
  SetProps = function(Instance, Props)
    if Props then
      table.foreach(Props, function(prop, value)
        Instance[prop] = value
      end)
    end
    return Instance
  end
  
  Create = function(...)
    local args = {...}
    if type(args) ~= "table" then return end
    local new = Instance.new(args[1])
    local Children = {}
    
    if type(args[2]) == "table" then
      SetProps(new, args[2])
      SetChildren(new, args[3])
      Children = args[3] or {}
    elseif typeof(args[2]) == "Instance" then
      new.Parent = args[2]
      SetProps(new, args[3])
      SetChildren(new, args[4])
      Children = args[4] or {}
    end
    return new
  end
  
  local function Save(file)
    if readfile and isfile and isfile(file) then
      local decode = HttpService:JSONDecode(readfile(file))
      
      if type(decode) == "table" then
        if rawget(decode, "UISize") then redzlib.Save["UISize"] = decode["UISize"] end
        if rawget(decode, "TabSize") then redzlib.Save["TabSize"] = decode["TabSize"] end
        if rawget(decode, "Theme") and VerifyTheme(decode["Theme"]) then redzlib.Save["Theme"] = decode["Theme"] end
      end
    end
  end
  
  pcall(Save, "redz library V5.json")
end

local Funcs = {} do
  function Funcs:InsertCallback(tab, func)
    if type(func) == "function" then
      table.insert(tab, func)
    end
    return func
  end
  
  function Funcs:FireCallback(tab, ...)
    for _,v in ipairs(tab) do
      if type(v) == "function" then
        task.spawn(v, ...)
      end
    end
  end
  
  function Funcs:ToggleVisible(Obj, Bool)
    Obj.Visible = Bool ~= nil and Bool or Obj.Visible
  end
  
  function Funcs:ToggleParent(Obj, Parent)
    if Bool ~= nil then
      Obj.Parent = Bool
    else
      Obj.Parent = not Obj.Parent and Parent
    end
  end
  
  function Funcs:GetConnectionFunctions(ConnectedFuncs, func)
    local Connected = { Function = func, Connected = true }
    
    function Connected:Disconnect()
      if self.Connected then
        table.remove(ConnectedFuncs, table.find(ConnectedFuncs, self.Function))
        self.Connected = false
      end
    end
    
    function Connected:Fire(...)
      if self.Connected then
        task.spawn(self.Function, ...)
      end
    end
    
    return Connected
  end
  
  function Funcs:GetCallback(Configs, index)
    local func = Configs[index] or Configs.Callback or function()end
    
    if type(func) == "table" then
      return ({function(Value) func[1][func[2]] = Value end})
    end
    return {func}
  end
end

local Connections, Connection = {}, redzlib.Connection do
  local function NewConnectionList(List)
    if type(List) ~= "table" then return end
    
    for _,CoName in ipairs(List) do
      local ConnectedFuncs, Connect = {}, {}
      Connection[CoName] = Connect
      Connections[CoName] = ConnectedFuncs
      Connect.Name = CoName
      
      function Connect:Connect(func)
        if type(func) == "function" then
          table.insert(ConnectedFuncs, func)
          return Funcs:GetConnectionFunctions(ConnectedFuncs, func)
        end
      end
      
      function Connect:Once(func)
        if type(func) == "function" then
          local Connected;
          
          local _NFunc;_NFunc = function(...)
            task.spawn(func, ...)
            Connected:Disconnect()
          end
          
          Connected = Funcs:GetConnectionFunctions(ConnectedFuncs, _NFunc)
          return Connected
        end
      end
    end
  end
  
  function Connection:FireConnection(CoName, ...)
    local Connection = type(CoName) == "string" and Connections[CoName] or Connections[CoName.Name]
    for _,Func in pairs(Connection) do
      task.spawn(Func, ...)
    end
  end
  
  NewConnectionList({"FlagsChanged", "ThemeChanged", "FileSaved", "ThemeChanging", "OptionAdded"})
end

local GetFlag, SetFlag, CheckFlag do
  CheckFlag = function(Name)
    return type(Name) == "string" and Flags[Name] ~= nil
  end
  
  GetFlag = function(Name)
    return type(Name) == "string" and Flags[Name]
  end
  
  SetFlag = function(Flag, Value)
    if Flag and (Value ~= Flags[Flag] or type(Value) == "table") then
      Flags[Flag] = Value
      Connection:FireConnection("FlagsChanged", Flag, Value)
    end
  end
  
  local db
  Connection.FlagsChanged:Connect(function(Flag, Value)
    local ScriptFile = Settings.ScriptFile
    if not db and ScriptFile and writefile then
      db=true;task.wait(0.1);db=false
      
      local Success, Encoded = pcall(function()
        -- local _Flags = {}
        -- for _,Flag in pairs(Flags) do _Flags[_] = Flag.Value end
        return HttpService:JSONEncode(Flags)
      end)
      
      if Success then
        local Success = pcall(writefile, ScriptFile, Encoded)
        if Success then
          Connection:FireConnection("FileSaved", "Script-Flags", ScriptFile, Encoded)
        end
      end
    end
  end)
end

local ScreenGui = Create("ScreenGui", CoreGui, {
  Name = "redz Library V5",
}, {
  Create("UIScale", {
    Scale = UIScale,
    Name = "Scale"
  })
})

local ScreenFind = CoreGui:FindFirstChild(ScreenGui.Name)
if ScreenFind and ScreenFind ~= ScreenGui then
  ScreenFind:Destroy()
end

local function GetStr(val)
  if type(val) == "function" then
    return val()
  end
  return val
end

local function ConnectSave(Instance, func)
  Instance.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
      while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
      end
    end
    func()
  end)
end

local function CreateTween(Configs)
  local Instance = Configs[1] or Configs.Instance
  local Prop = Configs[2] or Configs.Prop
  local NewVal = Configs[3] or Configs.NewVal
  local Time = Configs[4] or Configs.Time or 0.5
  local TweenWait = Configs[5] or Configs.wait or false
  local TweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Quint)
  
  local Tween = TweenService:Create(Instance, TweenInfo, {[Prop] = NewVal})
  Tween:Play()
  if TweenWait then
    Tween.Completed:Wait()
  end
  return Tween
end

local function MakeDrag(Instance)
  task.spawn(function()
    SetProps(Instance, {
      Active = true,
      AutoButtonColor = false
    })
    
		local DragStart, StartPos, InputOn
		
		local function Update(Input)
			local delta = Input.Position - DragStart
			local Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + delta.X / UIScale, StartPos.Y.Scale, StartPos.Y.Offset + delta.Y / UIScale)
			-- Instance.Position = Position
			CreateTween({Instance, "Position", Position, 0.35})
		end
		
		Instance.MouseButton1Down:Connect(function()
		  InputOn = true
		end)
		
    Instance.InputBegan:Connect(function(Input)
      if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
        StartPos = Instance.Position
        DragStart = Input.Position
        
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do RunService.Heartbeat:Wait()
          if InputOn then
            Update(Input)
          end
        end
        InputOn = false
      end
    end)
	end)
	return Instance
end

local function VerifyTheme(Theme)
  for name,_ in pairs(redzlib.Themes) do
    if name == Theme then
      return true
    end
  end
end

local function SaveJson(FileName, save)
  if writefile then
    local json = HttpService:JSONEncode(save)
    writefile(FileName, json)
  end
end

local Theme = redzlib.Themes[redzlib.Save.Theme]

local function AddEle(Name, Func)
  redzlib.Elements[Name] = Func
end

local function Make(Ele, Instance, props, ...)
  local Element = redzlib.Elements[Ele](Instance, props, ...)
  return Element
end

AddEle("Corner", function(parent, CornerRadius)
  local New = SetProps(Create("UICorner", parent, {
    CornerRadius = CornerRadius or UDim.new(0, 7)
  }), props)
  return New
end)

AddEle("Stroke", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("UIStroke", parent, {
    Color = args[1] or Theme["Color Stroke"],
    Thickness = args[2] or 1,
    ApplyStrokeMode = "Border"
  }), props), "Stroke")
  return New
end)

AddEle("Button", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("TextButton", parent, {
    Text = "",
    Size = UDim2.fromScale(1, 1),
    BackgroundColor3 = Theme["Color Hub 2"],
    AutoButtonColor = false
  }), props), "Frame")
  
  New.MouseEnter:Connect(function()
    New.BackgroundTransparency = 0.4
  end)
  New.MouseLeave:Connect(function()
    New.BackgroundTransparency = 0
  end)
  if args[1] then
    New.Activated:Connect(args[1])
  end
  return New
end)

AddEle("Gradient", function(parent, props, ...)
  local args = {...}
  local New = InsertTheme(SetProps(Create("UIGradient", parent, {
    Color = Theme["Color Hub 1"]
  }), props), "Gradient")
  return New
end)

local function ButtonFrame(Instance, Title, Description, HolderSize)
  local TitleL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.GothamMedium,
    TextColor3 = Theme["Color Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 0, 0.5),
    AnchorPoint = Vector2.new(0, 0.5),
    BackgroundTransparency = 1,
    TextTruncate = "AtEnd",
    TextSize = 10,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "Text")
  
  local DescL = InsertTheme(Create("TextLabel", {
    Font = Enum.Font.Gotham,
    TextColor3 = Theme["Color Dark Text"],
    Size = UDim2.new(1, -20),
    AutomaticSize = "Y",
    Position = UDim2.new(0, 12, 0, 15),
    BackgroundTransparency = 1,
    TextWrapped = true,
    TextSize = 8,
    TextXAlignment = "Left",
    Text = "",
    RichText = true
  }), "DarkText")

  local Frame = Make("Button", Instance, {
    Size = UDim2.new(1, 0, 0, 25),
    AutomaticSize = "Y",
    Name = "Option"
  })Make("Corner", Frame, UDim.new(0, 6))
  
	LabelHolder = Create("Frame", Frame, {
		AutomaticSize = "Y",
		BackgroundTransparency = 1,
		Size = HolderSize,
		Position = UDim2.new(0, 10, 0),
		AnchorPoint = Vector2.new(0, 0)
	}, {
		Create("UIListLayout", {
			SortOrder = "LayoutOrder",
			VerticalAlignment = "Center",
			Padding = UDim.new(0, 2)
		}),
		Create("UIPadding", {
			PaddingBottom = UDim.new(0, 5),
			PaddingTop = UDim.new(0, 5)
		}),
		TitleL,
		DescL,
	})
  
  local Label = {}
  function Label:SetTitle(NewTitle)
    if type(NewTitle) == "string" and NewTitle:gsub(" ", ""):len() > 0 then
      TitleL.Text = NewTitle
    end
  end
  function Label:SetDesc(NewDesc)
    if type(NewDesc) == "string" and NewDesc:gsub(" ", ""):len() > 0 then
      DescL.Visible = true
      DescL.Text = NewDesc
      LabelHolder.Position = UDim2.new(0, 10, 0)
      LabelHolder.AnchorPoint = Vector2.new(0, 0)
    else
      DescL.Visible = false
      DescL.Text = ""
      LabelHolder.Position = UDim2.new(0, 10, 0.5)
      LabelHolder.AnchorPoint = Vector2.new(0, 0.5)
    end
  end
  
  Label:SetTitle(Title)
  Label:SetDesc(Description)
  return Frame, Label
end

local function GetColor(Instance)
  if Instance:IsA("Frame") then
    return "BackgroundColor3"
  elseif Instance:IsA("ImageLabel") then
    return "ImageColor3"
  elseif Instance:IsA("TextLabel") then
    return "TextColor3"
  elseif Instance:IsA("ScrollingFrame") then
    return "ScrollBarImageColor3"
  elseif Instance:IsA("UIStroke") then
    return "Color"
  end
  return ""
end

-- /////////// --
function redzlib:GetIcon(IconName)
  if IconName:find("rbxassetid://") or IconName:len() < 1 then return IconName end
  IconName = IconName:lower():gsub("lucide", ""):gsub("-", "")
  
  for Name, Icon in pairs(redzlib.Icons) do
    Name = Name:gsub("lucide", ""):gsub("-", "")
    if Name == IconName then
      return Icon
    end
  end
  for Name, Icon in pairs(redzlib.Icons) do
    Name = Name:gsub("lucide", ""):gsub("-", "")
    if Name:find(IconName) then
      return Icon
    end
  end
  return IconName
end

function redzlib:SetTheme(NewTheme)
  if not VerifyTheme(NewTheme) then return end
  
  redzlib.Save.Theme = NewTheme
  SaveJson("redz library V5.json", redzlib.Save)
  Theme = redzlib.Themes[NewTheme]
  
  Comnection:FireConnection("ThemeChanged", NewTheme)
  table.foreach(redzlib.Instances, function(_,Val)
    if Val.Type == "Gradient" then
      Val.Instance.Color = Theme["Color Hub 1"]
    elseif Val.Type == "Frame" then
      Val.Instance.BackgroundColor3 = Theme["Color Hub 2"]
    elseif Val.Type == "Stroke" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Stroke"]
    elseif Val.Type == "Theme" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
    elseif Val.Type == "Text" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Text"]
    elseif Val.Type == "DarkText" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Dark Text"]
    elseif Val.Type == "ScrollBar" then
      Val.Instance[GetColor(Val.Instance)] = Theme["Color Theme"]
    end
  end)
end

function redzlib:SetScale(NewScale)
  NewScale = ViewportSize.Y / math.clamp(NewScale, 300, 2000)
  UIScale, ScreenGui.Scale.Scale = NewScale, NewScale
end

function redzlib:MakeWindow(Configs)
  local WTitle = Configs[1] or Configs.Name or Configs.Title or "redz Library V5"
  local WMiniText = Configs[2] or Configs.SubTitle or "by : redz9999"
  
  Settings.ScriptFile = Configs[3] or Configs.SaveFolder or false
  
  local function LoadFile()
    local File = Settings.ScriptFile
    if type(File) ~= "string" then return end
    if not readfile or not isfile then return end
    local s, r = pcall(isfile, File)
    
    if s and r then
      local s, _Flags = pcall(readfile, File)
      
      if s and type(_Flags) == "string" then
        local s,r = pcall(function() return HttpService:JSONDecode(_Flags) end)
        Flags = s and r or {}
      end
    end
  end;LoadFile()
  
  local UISizeX, UISizeY = unpack(redzlib.Save.UISize)
  local MainFrame = InsertTheme(Create("ImageButton", ScreenGui, {
    Size = UDim2.fromOffset(UISizeX, UISizeY),
    Position = UDim2.new(0.5, -UISizeX/2, 0.5, -UISizeY/2),
    BackgroundTransparency = 0.03,
    Name = "Hub"
  }), "Main")
  Make("Gradient", MainFrame, {
    Rotation = 45
  })MakeDrag(MainFrame)
  
  local MainCorner = Make("Corner", MainFrame)
  
  local Components = Create("Folder", MainFrame, {
    Name = "Components"
  })
  
  local DropdownHolder = Create("Folder", ScreenGui, {
    Name = "Dropdown"
  })
  
  local TopBar = Create("Frame", Components, {
    Size = UDim2.new(1, 0, 0, 28),
    BackgroundTransparency = 1,
    Name = "Top Bar"
  })
  
  local Title = InsertTheme(Create("TextLabel", TopBar, {
    Position = UDim2.new(0, 15, 0.5),
    AnchorPoint = Vector2.new(0, 0.5),
    AutomaticSize = "XY",
    Text = WTitle,
    TextXAlignment = "Left",
    TextSize = 12,
    TextColor3 = Theme["Color Text"],
    BackgroundTransparency = 1,
    Font = Enum.Font.GothamMedium,
    Name = "Title"
  }, {
    InsertTheme(Create("TextLabel", {
      Size = UDim2.fromScale(0, 1),
      AutomaticSize = "X",
      AnchorPoint = Vector2.new(0, 1),
      Position = UDim2.new(1, 5, 0.9),
      Text = WMiniText,
      TextColor3 = Theme["Color Dark Text"],
      BackgroundTransparency = 1,
      TextXAlignment = "Left",
      TextYAlignment = "Bottom",
      TextSize = 8,
      Font = Enum.Font.Gotham,
      Name = "SubTitle"
    }), "DarkText")
  }), "Text")
  
  local MainScroll = InsertTheme(Create("ScrollingFrame", Components, {
    Size = UDim2.new(0, redzlib.Save.TabSize, 1, -TopBar.Size.Y.Offset),
    ScrollBarImageColor3 = Theme["Color Theme"],
    Position = UDim2.new(0, 0, 1, 0),
    AnchorPoint = Vector2.new(0, 1),
    ScrollBarThickness = 1.5,
    BackgroundTransparency = 1,
    ScrollBarImageTransparency = 0.2,
    CanvasSize = UDim2.new(),
    AutomaticCanvasSize = "Y",
    ScrollingDirection = "Y",
    BorderSizePixel = 0,
    Name = "Tab Scroll"
  }, {
    Create("UIPadding", {
      PaddingLeft = UDim.new(0, 10),
      PaddingRight = UDim.new(0, 10),
      PaddingTop = UDim.new(0, 10),
      PaddingBottom = UDim.new(0, 10)
    }), Create("UIListLayout", {
      Padding = UDim.new(0, 5)
    })
  }), "ScrollBar")
  
  local Containers = Create("Frame", Components, {
    Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset),
    AnchorPoint = Vector2.new(1, 1),
    Position = UDim2.new(1, 0, 1, 0),
    BackgroundTransparency = 1,
    ClipsDescendants = true,
    Name = "Containers"
  })
  
  local ControlSize1, ControlSize2 = MakeDrag(Create("ImageButton", MainFrame, {
    Size = UDim2.new(0, 35, 0, 35),
    Position = MainFrame.Size,
    Active = true,
    AnchorPoint = Vector2.new(0.8, 0.8),
    BackgroundTransparency = 1,
    Name = "Control Hub Size"
  })), MakeDrag(Create("ImageButton", MainFrame, {
    Size = UDim2.new(0, 20, 1, -30),
    Position = UDim2.new(0, MainScroll.Size.X.Offset, 1, 0),
    AnchorPoint = Vector2.new(0.5, 1),
    Active = true,
    BackgroundTransparency = 1,
    Name = "Control Tab Size"
  }))
  
  local function ControlSize()
    local Pos1, Pos2 = ControlSize1.Position, ControlSize2.Position
    ControlSize1.Position = UDim2.fromOffset(math.clamp(Pos1.X.Offset, 430, 1000), math.clamp(Pos1.Y.Offset, 200, 500))
    ControlSize2.Position = UDim2.new(0, math.clamp(Pos2.X.Offset, 135, 250), 1, 0)
    
    MainScroll.Size = UDim2.new(0, ControlSize2.Position.X.Offset, 1, -TopBar.Size.Y.Offset)
    Containers.Size = UDim2.new(1, -MainScroll.Size.X.Offset, 1, -TopBar.Size.Y.Offset)
    MainFrame.Size = ControlSize1.Position
  end
  
  ControlSize1:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  ControlSize2:GetPropertyChangedSignal("Position"):Connect(ControlSize)
  
  ConnectSave(ControlSize1, function()
    if not Minimized then
      redzlib.Save.UISize = {MainFrame.Size.X.Offset, MainFrame.Size.Y.Offset}
      SaveJson("redz library V5.json", redzlib.Save)
    end
  end)
  
  ConnectSave(ControlSize2, function()
    redzlib.Save.TabSize = MainScroll.Size.X.Offset
    SaveJson("redz library V5.json", redzlib.Save)
  end)
  
  local ButtonsFolder = Create("Folder", TopBar, {
    Name = "Buttons"
  })
  
  local CloseButton = Create("ImageButton", {
    Size = UDim2.new(0, 14, 0, 14),
    Position = UDim2.new(1, -10, 0.5),
    AnchorPoint = Vector2.new(1, 0.5),
    BackgroundTransparency = 1,
    Image = "rbxassetid://10747384394",
    AutoButtonColor = false,
    Name = "Close"
  })
  
  local MinimizeButton = SetProps(CloseButton:Clone(), {
    Position = UDim2.new(1, -35, 0.5),
    Image = "rbxassetid://10734896206",
    Name = "Minimize"
  })
  
  SetChildren(ButtonsFolder, {
    CloseButton,
    MinimizeButton
  })
  
  local Minimized, SaveSize, WaitClick
  local Window, FirstTab = {}, false
  function Window:CloseBtn()
    local Dialog = Window:Dialog({
      Title = "Close",
      Text = "Are you sure you want to close this script??",
      Options = {
        {"Confirm", function()
          ScreenGui:Destroy()
        end},
        {"Cancel"}
      }
    })
  end
  function Window:MinimizeBtn()
    if WaitClick then return end
    WaitClick = true
    
    if Minimized then
      MinimizeButton.Image = "rbxassetid://10734896206"
      CreateTween({MainFrame, "Size", SaveSize, 0.25, true})
      ControlSize1.Visible = true
      ControlSize2.Visible = true
      Minimized = false
    else
      MinimizeButton.Image = "rbxassetid://10734924532"
      SaveSize = MainFrame.Size
      ControlSize1.Visible = false
      ControlSize2.Visible = false
      CreateTween({MainFrame, "Size", UDim2.fromOffset(MainFrame.Size.X.Offset, 28), 0.25, true})
      Minimized = true
    end
    
    WaitClick = false
  end
  function Window:Minimize()
    MainFrame.Visible = not MainFrame.Visible
  end
  function Window:AddMinimizeButton(Configs)
    local Button = MakeDrag(Create("ImageButton", ScreenGui, {
      Size = UDim2.fromOffset(35, 35),
      Position = UDim2.fromScale(0.15, 0.15),
      BackgroundTransparency = 1,
      BackgroundColor3 = Theme["Color Hub 2"],
      AutoButtonColor = false
    }))
    
    local Stroke, Corner
    if Configs.Corner then
      Corner = Make("Corner", Button)
      SetProps(Corner, Configs.Corner)
    end
    if Configs.Stroke then
      Stroke = Make("Stroke", Button)
      SetProps(Stroke, Configs.Corner)
    end
    
    SetProps(Button, Configs.Button)
    Button.Activated:Connect(Window.Minimize)
    
    return {
      Stroke = Stroke,
      Corner = Corner,
      Button = Button
    }
  end
  function Window:Set(Val1, Val2)
    if type(Val1) == "string" and type(Val2) == "string" then
      Title.Text = Val1
      Title.SubTitle.Text = Val2
    elseif type(Val1) == "string" then
      Title.Text = Val1
    end
  end
  function Window:Dialog(Configs)
    if MainFrame:FindFirstChild("Dialog") then return end
    if Minimized then
      Window:MinimizeBtn()
    end
    
    local DTitle = Configs[1] or Configs.Title or "Dialog"
    local DText = Configs[2] or Configs.Text or "This is a Dialog"
    local DOptions = Configs[3] or Configs.Options or {}
    
    local Frame = Create("Frame", {
      Active = true,
      Size = UDim2.fromOffset(250 * 1.08, 150 * 1.08),
      Position = UDim2.fromScale(0.5, 0.5),
      AnchorPoint = Vector2.new(0.5, 0.5)
    }, {
      InsertTheme(Create("TextLabel", {
        Font = Enum.Font.GothamBold,
        Size = UDim2.new(1, 0, 0, 20),
        Text = DTitle,
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Text"],
        TextSize = 15,
        Position = UDim2.fromOffset(15, 5),
        BackgroundTransparency = 1
      }), "Text"),
      InsertTheme(Create("TextLabel", {
        Font = Enum.Font.GothamMedium,
        Size = UDim2.new(1, -25),
        AutomaticSize = "Y",
        Text = DText,
        TextXAlignment = "Left",
        TextColor3 = Theme["Color Dark Text"],
        TextSize = 12,
        Position = UDim2.fromOffset(15, 25),
        BackgroundTransparency = 1,
        TextWrapped = true
      }), "DarkText")
    })Make("Gradient", Frame, {Rotation = 270})Make("Corner", Frame)
    
    local ButtonsHolder = Create("Frame", Frame, {
      Size = UDim2.fromScale(1, 0.35),
      Position = UDim2.fromScale(0, 1),
      AnchorPoint = Vector2.new(0, 1),
      BackgroundColor3 = Theme["Color Hub 2"],
      BackgroundTransparency = 1
    }, {
      Create("UIListLayout", {
        Padding = UDim.new(0, 10),
			  VerticalAlignment = "Center",
			  FillDirection = "Horizontal",
			  HorizontalAlignment = "Center"
      })
    })
    
    local Screen = InsertTheme(Create("Frame", MainFrame, {
      BackgroundTransparency = 0.6,
      Active = true,
      BackgroundColor3 = Theme["Color Hub 2"],
      Size = UDim2.new(1, 0, 1, 0),
      BackgroundColor3 = Theme["Color Stroke"],
      Name = "Dialog"
    }), "Stroke")
    
    MainCorner:Clone().Parent = Screen
    Frame.Parent = Screen
    CreateTween({Frame, "Size", UDim2.fromOffset(250, 150), 0.2})
    CreateTween({Frame, "Transparency", 0, 0.15})
    CreateTween({Screen, "Transparency", 0.3, 0.15})
    
    local ButtonCount, Dialog = 1, {}
    function Dialog:Button(Configs)
      local Name = Configs[1] or Configs.Name or Configs.Title or ""
      local Callback = Configs[2] or Configs.Callback or function()end
      
      ButtonCount = ButtonCount + 1
      local Button = Make("Button", ButtonsHolder)
      Make("Corner", Button)
      SetProps(Button, {
        Text = Name,
        Font = Enum.Font.GothamBold,
        TextColor3 = Theme["Color Text"],
        TextSize = 12
      })
      
      for _,Button in pairs(ButtonsHolder:GetChildren()) do
        if Button:IsA("TextButton") then
          Button.Size = UDim2.new(1 / ButtonCount, -(((ButtonCount - 1) * 20) / ButtonCount), 0, 32) -- Fluent Library :)
        end
      end
      Button.Activated:Connect(Dialog.Close)
      Button.Activated:Connect(Callback)
    end
    function Dialog:Close()
      CreateTween({Frame, "Size", UDim2.fromOffset(250 * 1.08, 150 * 1.08), 0.2})
      CreateTween({Screen, "Transparency", 1, 0.15})
      CreateTween({Frame, "Transparency", 1, 0.15, true})
      Screen:Destroy()
    end
    table.foreach(DOptions, function(_,Button)
      Dialog:Button(Button)
    end)
    return Dialog
  end
  function Window:SelectTab(TabSelect)
    if type(TabSelect) == "number" then
      redzlib.Tabs[TabSelect].func:Enable()
    else
      for _,Tab in pairs(redzlib.Tabs) do
        if Tab.Cont == TabSelect.Cont then
          Tab.func:Enable()
        end
      end
    end
  end
  
  local ContainerList = {}
  function Window:MakeTab(paste, Configs)
    if type(paste) == "table" then Configs = paste end
    local TName = Configs[1] or Configs.Title or "Tab!"
    local TIcon = Configs[2] or Configs.Icon or ""
    
    TIcon = redzlib:GetIcon(TIcon)
    if not TIcon:find("rbxassetid://") or TIcon:gsub("rbxassetid://", ""):len() < 6 then
      TIcon = false
    end
    
    local TabSelect = Make("Button", MainScroll, {
      Size = UDim2.new(1, 0, 0, 24)
    })Make("Corner", TabSelect)
    
    local LabelTitle = InsertTheme(Create("TextLabel", TabSelect, {
      Size = UDim2.new(1, TIcon and -25 or -15, 1),
      Position = UDim2.fromOffset(TIcon and 25 or 15),
      BackgroundTransparency = 1,
      Font = Enum.Font.GothamMedium,
      Text = TName,
      TextColor3 = Theme["Color Text"],
      TextSize = 10,
      TextXAlignment = Enum.TextXAlignment.Left,
      TextTransparency = (FirstTab and 0.3) or 0,
      TextTruncate = "AtEnd"
    }), "Text")
    
    local LabelIcon = InsertTheme(Create("ImageLabel", TabSelect, {
      Position = UDim2.new(0, 8, 0.5),
      Size = UDim2.new(0, 13, 0, 13),
      AnchorPoint = Vector2.new(0, 0.5),
      Image = TIcon or "",
      BackgroundTransparency = 1,
      ImageTransparency = (FirstTab and 0.3) or 0
    }), "Text")
    
    local Selected = InsertTheme(Create("Frame", TabSelect, {
      Size = FirstTab and UDim2.new(0, 4, 0, 4) or UDim2.new(0, 4, 0, 13),
      Position = UDim2.new(0, 1, 0.5),
      AnchorPoint = Vector2.new(0, 0.5),
      BackgroundColor3 = Theme["Color Theme"],
      BackgroundTransparency = FirstTab and 1 or 0
    }), "Theme")Make("Corner", Selected, UDim.new(0.5, 0))
    
    local Container = InsertTheme(Create("ScrollingFrame", {
      Size = UDim2.new(1, 0, 1, 0),
      Position = UDim2.new(0, 0, 1),
      AnchorPoint = Vector2.new(0, 1),
      ScrollBarThickness = 1.5,
      BackgroundTransparency = 1,
      ScrollBarImageTransparency = 0.2,
      ScrollBarImageColor3 = Theme["Color Theme"],
      AutomaticCanvasSize = "Y",
      ScrollingDirection = "Y",
      BorderSizePixel = 0,
      CanvasSize = UDim2.new(),
      Name = ("Container %i [ %s ]"):format(#ContainerList + 1, TName)
    }, {
      Create("UIPadding", {
        PaddingLeft = UDim.new(0, 10),
        PaddingRight = UDim.new(0, 10),
        PaddingTop = UDim.new(0, 10),
        PaddingBottom = UDim.new(0, 10)
      }), Create("UIListLayout", {
        Padding = UDim.new(0, 5)
      })
    }), "ScrollBar")
    
    table.insert(ContainerList, Container)
    
    if not FirstTab then Container.Parent = Containers end
    
    local function Tabs()
      if Container.Parent then return end
      for _,Frame in pairs(ContainerList) do
        if Frame:IsA("ScrollingFrame") and Frame ~= Container then
          Frame.Parent = nil
        end
      end
      Container.Parent = Containers
      Container.Size = UDim2.new(1, 0, 1, 150)
      table.foreach(redzlib.Tabs, function(_,Tab)
        if Tab.Cont ~= Container then
          Tab.func:Disable()
        end
      end)
      CreateTween({Container, "Size", UDim2.new(1, 0, 1, 0), 0.3})
      CreateTween({LabelTitle, "TextTransparency", 0, 0.35})
      CreateTween({LabelIcon, "ImageTransparency", 0, 0.35})
      CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 13), 0.35})
      CreateTween({Selected, "BackgroundTransparency", 0, 0.35})
    end
    TabSelect.Activated:Connect(Tabs)
    
    FirstTab = true
    local Tab = {}
    table.insert(redzlib.Tabs, {TabInfo = {Name = TName, Icon = TIcon}, func = Tab, Cont = Container})
    Tab.Cont = Container
    
    function Tab:Disable()
      Container.Parent = nil
      CreateTween({LabelTitle, "TextTransparency", 0.3, 0.35})
      CreateTween({LabelIcon, "ImageTransparency", 0.3, 0.35})
      CreateTween({Selected, "Size", UDim2.new(0, 4, 0, 4), 0.35})
      CreateTween({Selected, "BackgroundTransparency", 1, 0.35})
    end
    function Tab:Enable()
      Tabs()
    end
    function Tab:Visible(Bool)
      Funcs:ToggleVisible(TabSelect, Bool)
      Funcs:ToggleParent(Container, Bool, Containers)
    end
    function Tab:Destroy() TabSelect:Destroy() Container:Destroy() end
    
    function Tab:AddSection(Configs)
      local SectionName = type(Configs) == "string" and Configs or Configs[1] or Configs.Name or Configs.Title or Configs.Section
      
      local SectionFrame = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 20),
        BackgroundTransparency = 1,
        Name = "Option"
      })
      
      local SectionLabel = InsertTheme(Create("TextLabel", SectionFrame, {
        Font = Enum.Font.GothamBold,
        Text = SectionName,
        TextColor3 = Theme["Color Text"],
        Size = UDim2.new(1, -25, 1, 0),
        Position = UDim2.new(0, 5),
        BackgroundTransparency = 1,
        TextTruncate = "AtEnd",
        TextSize = 14,
        TextXAlignment = "Left"
      }), "Text")
      
      local Section = {}
      table.insert(redzlib.Options, {type = "Section", Name = SectionName, func = Section})
      function Section:Visible(Bool)
        if Bool == nil then SectionFrame.Visible = not SectionFrame.Visible return end
        SectionFrame.Visible = Bool
      end
      function Section:Destroy()
        SectionFrame:Destroy()
      end
      function Section:Set(New)
        if New then
          SectionLabel.Text = GetStr(New)
        end
      end
      return Section
    end
    function Tab:AddParagraph(Configs)
      local PName = Configs[1] or Configs.Title or "Paragraph"
      local PDesc = Configs[2] or Configs.Text or ""
      
      local Frame, LabelFunc = ButtonFrame(Container, PName, PDesc, UDim2.new(1, -20))
      
      local Paragraph = {}
      function Paragraph:Visible(...) Funcs:ToggleVisible(Frame, ...) end
      function Paragraph:Destroy() Frame:Destroy() end
      function Paragraph:SetTitle(Val)
        LabelFunc:SetTitle(GetStr(Val))
      end
      function Paragraph:SetDesc(Val)
        LabelFunc:SetDesc(GetStr(Val))
      end
      function Paragraph:Set(Val1, Val2)
        if Val1 and Val2 then
          LabelFunc:SetTitle(GetStr(Val1))
          LabelFunc:SetDesc(GetStr(Val2))
        elseif Val1 then
          LabelFunc:SetDesc(GetStr(Val1))
        end
      end
      return Paragraph
    end
    function Tab:AddButton(Configs)
      local BName = Configs[1] or Configs.Name or Configs.Title or "Button!"
      local BDescription = Configs.Desc or Configs.Description or ""
      local Callback = Funcs:GetCallback(Configs, 2)
      
      local FButton, LabelFunc = ButtonFrame(Container, BName, BDescription, UDim2.new(1, -20))
      
      local ButtonIcon = Create("ImageLabel", FButton, {
        Size = UDim2.new(0, 14, 0, 14),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundTransparency = 1,
        Image = "rbxassetid://10709791437"
      })
      
      FButton.Activated:Connect(function()
        Funcs:FireCallback(Callback)
      end)
      
      local Button = {}
      function Button:Visible(...) Funcs:ToggleVisible(FButton, ...) end
      function Button:Destroy() FButton:Destroy() end
      function Button:Callback(...) Funcs:InsertCallback(Callback, ...) end
      function Button:Set(Val1, Val2)
        if type(Val1) == "string" and type(Val2) == "string" then
          LabelFunc:SetTitle(Val1)
          LabelFunc:SetDesc(Val2)
        elseif type(Val1) == "string" then
          LabelFunc:SetTitle(Val1)
        elseif type(Val1) == "function" then
          Callback = Val1
        end
      end
      return Button
    end
    function Tab:AddToggle(Configs)
      local TName = Configs[1] or Configs.Name or Configs.Title or "Toggle"
      local TDesc = Configs.Desc or Configs.Description or ""
      local Callback = Funcs:GetCallback(Configs, 3)
      local Flag = Configs[4] or Configs.Flag or false
      local Default = Configs[2] or Configs.Default or false
      if CheckFlag(Flag) then Default = GetFlag(Flag) end
      
      local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38))
      
      local ToggleHolder = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 35, 0, 18),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")Make("Corner", ToggleHolder, UDim.new(0.5, 0))
      
      local Slider = Create("Frame", ToggleHolder, {
        BackgroundTransparency = 1,
        Size = UDim2.new(0.8, 0, 0.8, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        AnchorPoint = Vector2.new(0.5, 0.5)
      })
      
      local Toggle = InsertTheme(Create("Frame", Slider, {
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0, 0, 0.5),
        AnchorPoint = Vector2.new(0, 0.5),
        BackgroundColor3 = Theme["Color Theme"]
      }), "Theme")Make("Corner", Toggle, UDim.new(0.5, 0))
      
      local WaitClick
      local function SetToggle(Val)
        if WaitClick then return end
        
        WaitClick, Default = true, Val
        SetFlag(Flag, Default)
        Funcs:FireCallback(Callback, Default)
        if Default then
          CreateTween({Toggle, "Position", UDim2.new(1, 0, 0.5), 0.25})
          CreateTween({Toggle, "BackgroundTransparency", 0, 0.25})
          CreateTween({Toggle, "AnchorPoint", Vector2.new(1, 0.5), 0.25, Wait or false})
        else
          CreateTween({Toggle, "Position", UDim2.new(0, 0, 0.5), 0.25})
          CreateTween({Toggle, "BackgroundTransparency", 0.8, 0.25})
          CreateTween({Toggle, "AnchorPoint", Vector2.new(0, 0.5), 0.25, Wait or false})
        end
        WaitClick = false
      end;task.spawn(SetToggle, Default)
      
      Button.Activated:Connect(function()
        SetToggle(not Default)
      end)
      
      local Toggle = {}
      function Toggle:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Toggle:Destroy() Button:Destroy() end
      function Toggle:Callback(...) Funcs:InsertCallback(Callback, ...)() end
      function Toggle:Set(Val1, Val2)
        if type(Val1) == "string" and type(Val2) == "string" then
          LabelFunc:SetTitle(Val1)
          LabelFunc:SetDesc(Val2)
        elseif type(Val1) == "string" then
          LabelFunc:SetTitle(Val1, false, true)
        elseif type(Val1) == "boolean" then
          if WaitClick and Val2 then
            repeat task.wait() until not WaitClick
          end
          task.spawn(SetToggle, Val1)
        elseif type(Val1) == "function" then
          Callback = Val1
        end
      end
      return Toggle
    end
    function Tab:AddDropdown(Configs)
      local DName = Configs[1] or Configs.Name or Configs.Title or "Dropdown"
      local DDesc = Configs.Desc or Configs.Description or ""
      local DOptions = Configs[2] or Configs.Options or {}
      local OpDefault = Configs[3] or Configs.Default or {}
      local Flag = Configs[5] or Configs.Flag or false
      local DMultiSelect = Configs.MultiSelect or false
      local Callback = Funcs:GetCallback(Configs, 4)
      
      local Button, LabelFunc = ButtonFrame(Container, DName, DDesc, UDim2.new(1, -180))
      
      local SelectedFrame = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 150, 0, 18),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
      
      local ActiveLabel = InsertTheme(Create("TextLabel", SelectedFrame, {
        Size = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextScaled = true,
        TextColor3 = Theme["Color Text"],
        Text = "..."
      }), "Text")
      
      local Arrow = Create("ImageLabel", SelectedFrame, {
        Size = UDim2.new(0, 15, 0, 15),
        Position = UDim2.new(0, -5, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://10709791523",
        BackgroundTransparency = 1
      })
      
      local NoClickFrame = Create("TextButton", DropdownHolder, {
        Name = "AntiClick",
        Size = UDim2.new(1, 0, 1, 0),
        BackgroundTransparency = 1,
        Visible = false,
        Text = ""
      })
      
      local DropFrame = Create("Frame", NoClickFrame, {
        Size = UDim2.new(SelectedFrame.Size.X, 0, 0),
        BackgroundTransparency = 0.1,
        BackgroundColor3 = Color3.fromRGB(255, 255, 255),
        AnchorPoint = Vector2.new(0, 1),
        Name = "DropdownFrame",
        ClipsDescendants = true,
        Active = true
      })Make("Corner", DropFrame)Make("Stroke", DropFrame)Make("Gradient", DropFrame, {Rotation = 60})
      
      local ScrollFrame = InsertTheme(Create("ScrollingFrame", DropFrame, {
        ScrollBarImageColor3 = Theme["Color Theme"],
        Size = UDim2.new(1, 0, 1, 0),
        ScrollBarThickness = 1.5,
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        CanvasSize = UDim2.new(),
        ScrollingDirection = "Y",
        AutomaticCanvasSize = "Y",
        Active = true
      }, {
        Create("UIPadding", {
          PaddingLeft = UDim.new(0, 8),
          PaddingRight = UDim.new(0, 8),
          PaddingTop = UDim.new(0, 5),
          PaddingBottom = UDim.new(0, 5)
        }), Create("UIListLayout", {
          Padding = UDim.new(0, 4)
        })
      }), "ScrollBar")
      
      local ScrollSize, WaitClick = 5
      local function Disable()
        WaitClick = true
        CreateTween({Arrow, "Rotation", 0, 0.2})
        CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
        CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
        Arrow.Image = "rbxassetid://10709791523"
        NoClickFrame.Visible = false
        WaitClick = false
      end
      
      local function GetFrameSize()
        return UDim2.fromOffset(152, ScrollSize)
      end
      
      local function CalculateSize()
        local Count = 0
        for _,Frame in pairs(ScrollFrame:GetChildren()) do
          if Frame:IsA("Frame") or Frame.Name == "Option" then
            Count = Count + 1
          end
        end
        ScrollSize = (math.clamp(Count, 0, 10) * 25) + 10
        if NoClickFrame.Visible then
          NoClickFrame.Visible = true
          CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
        end
      end
      
      local function Minimize()
        if WaitClick then return end
        WaitClick = true
        if NoClickFrame.Visible then
          Arrow.Image = "rbxassetid://10709791523"
          CreateTween({Arrow, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
          CreateTween({DropFrame, "Size", UDim2.new(0, 152, 0, 0), 0.2, true})
          NoClickFrame.Visible = false
        else
          NoClickFrame.Visible = true
          Arrow.Image = "rbxassetid://10709790948"
          CreateTween({Arrow, "ImageColor3", Theme["Color Theme"], 0.2})
          CreateTween({DropFrame, "Size", GetFrameSize(), 0.2, true})
        end
        WaitClick = false
      end
      
      local function CalculatePos()
        local FramePos = SelectedFrame.AbsolutePosition
        local ScreenSize = ScreenGui.AbsoluteSize
        local ClampX = math.clamp((FramePos.X / UIScale), 0, ScreenSize.X / UIScale - DropFrame.Size.X.Offset)
        local ClampY = math.clamp((FramePos.Y / UIScale) , 0, ScreenSize.Y / UIScale)
        
        local NewPos = UDim2.fromOffset(ClampX, ClampY)
        local AnchorPoint = FramePos.Y > ScreenSize.Y / 1.4 and 1 or ScrollSize > 80 and 0.5 or 0
        DropFrame.AnchorPoint = Vector2.new(0, AnchorPoint)
        CreateTween({DropFrame, "Position", NewPos, 0.1})
      end
      
      local AddNewOptions, GetOptions, AddOption, RemoveOption, Selected do
        local Default = type(OpDefault) ~= "table" and {OpDefault} or OpDefault
        local MultiSelect = DMultiSelect
        local Options = {}
        Selected = MultiSelect and {} or CheckFlag(Flag) and GetFlag(Flag) or Default[1]
        
        if MultiSelect then
          for index, Value in pairs(CheckFlag(Flag) and GetFlag(Flag) or Default) do
            if type(index) == "string" and (DOptions[index] or table.find(DOptions, index)) then
              Selected[index] = Value
            elseif DOptions[Value] then
              Selected[Value] = true
            end
          end
        end
        
        local function CallbackSelected()
          SetFlag(Flag, MultiSelect and Selected or tostring(Selected))
          Funcs:FireCallback(Callback, Selected)
        end
        
        local function UpdateLabel()
          if MultiSelect then
            local list = {}
            for index, Value in pairs(Selected) do
              if Value then
                table.insert(list, index)
              end
            end
            ActiveLabel.Text = #list > 0 and table.concat(list, ", ") or "..."
          else
            ActiveLabel.Text = tostring(Selected or "...")
          end
        end
        
        local function UpdateSelected()
          if MultiSelect then
            for _,v in pairs(Options) do
              local nodes, Stats = v.nodes, v.Stats
              CreateTween({nodes[2], "BackgroundTransparency", Stats and 0 or 0.8, 0.35})
              CreateTween({nodes[2], "Size", Stats and UDim2.fromOffset(4, 12) or UDim2.fromOffset(4, 4), 0.35})
              CreateTween({nodes[3], "TextTransparency", Stats and 0 or 0.4, 0.35})
            end
          else
            for _,v in pairs(Options) do
              local Slt = v.Value == Selected
              local nodes = v.nodes
              CreateTween({nodes[2], "BackgroundTransparency", Slt and 0 or 1, 0.35})
              CreateTween({nodes[2], "Size", Slt and UDim2.fromOffset(4, 14) or UDim2.fromOffset(4, 4), 0.35})
              CreateTween({nodes[3], "TextTransparency", Slt and 0 or 0.4, 0.35})
            end
          end
          UpdateLabel()
        end
        
        local function Select(Option)
          if MultiSelect then
            Option.Stats = not Option.Stats
            Option.LastCB = tick()
            
            Selected[Option.Name] = Option.Stats
            CallbackSelected()
          else
            Option.LastCB = tick()
            
            Selected = Option.Value
            CallbackSelected()
          end
          UpdateSelected()
        end
        
        AddOption = function(index, Value)
          local Name = tostring(type(index) == "string" and index or Value)
          
          if Options[Name] then return end
          Options[Name] = {
            index = index,
            Value = Value,
            Name = Name,
            Stats = false,
            LastCB = 0
          }
          
          if MultiSelect then
            local Stats = Selected[Name]
            Selected[Name] = Stats or false
            Options[Name].Stats = Stats
          end
          
          local Button = Make("Button", ScrollFrame, {
            Name = "Option",
            Size = UDim2.new(1, 0, 0, 21),
            Position = UDim2.new(0, 0, 0.5),
            AnchorPoint = Vector2.new(0, 0.5)
          })Make("Corner", Button, UDim.new(0, 4))
          
          local IsSelected = InsertTheme(Create("Frame", Button, {
            Position = UDim2.new(0, 1, 0.5),
            Size = UDim2.new(0, 4, 0, 4),
            BackgroundColor3 = Theme["Color Theme"],
            BackgroundTransparency = 1,
            AnchorPoint = Vector2.new(0, 0.5)
          }), "Theme")Make("Corner", IsSelected, UDim.new(0.5, 0))
          
          local OptioneName = InsertTheme(Create("TextLabel", Button, {
            Size = UDim2.new(1, 0, 1),
            Position = UDim2.new(0, 10),
            Text = Name,
            TextColor3 = Theme["Color Text"],
            Font = Enum.Font.GothamBold,
            TextXAlignment = "Left",
            BackgroundTransparency = 1,
            TextTransparency = 0.4
          }), "Text")
          
          Button.Activated:Connect(function()
            Select(Options[Name])
          end)
          
          Options[Name].nodes = {Button, IsSelected, OptioneName}
        end
        
        RemoveOption = function(index, Value)
          local Name = tostring(type(index) == "string" and index or Value)
          if Options[Name] then
            if MultiSelect then Selected[Name] = nil else Selected = nil end
            Options[Name].nodes[1]:Destroy()
            table.clear(Options[Name])
            Options[Name] = nil
          end
        end
        
        GetOptions = function()
          return Options
        end
        
        AddNewOptions = function(List, Clear)
          if Clear then
            table.foreach(Options, RemoveOption)
          end
          table.foreach(List, AddOption)
          CallbackSelected()
          UpdateSelected()
        end
        
        table.foreach(DOptions, AddOption)
        CallbackSelected()
        UpdateSelected()
      end
      
      Button.Activated:Connect(Minimize)
      NoClickFrame.MouseButton1Down:Connect(Disable)
      NoClickFrame.MouseButton1Click:Connect(Disable)
      MainFrame:GetPropertyChangedSignal("Visible"):Connect(Disable)
      SelectedFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(CalculatePos)
      
      Button.Activated:Connect(CalculateSize)
      ScrollFrame.ChildAdded:Connect(CalculateSize)
      ScrollFrame.ChildRemoved:Connect(CalculateSize)
      CalculatePos()
      CalculateSize()
      
      local Dropdown = {}
      function Dropdown:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Dropdown:Destroy() Button:Destroy() end
      function Dropdown:Callback(...) Funcs:InsertCallback(Callback, ...)(Selected) end
      
      function Dropdown:Add(...)
        local NewOptions = {...}
        if type(NewOptions[1]) == "table" then
          table.foreach(Option, function(_,Name)
            AddOption(Name)
          end)
        else
          table.foreach(NewOptions, function(_,Name)
            AddOption(Name)
          end)
        end
      end
      function Dropdown:Remove(Option)
        for index, Value in pairs(GetOptions()) do
          if type(Option) == "number" and index == Option or Value.Name == "Option" then
            RemoveOption(index, Value.Value)
          end
        end
      end
      function Dropdown:Select(Option)
        if type(Option) == "string" then
          for _,Val in pairs(Options) do
            if Val.Name == Option then
              Val.Active()
            end
          end
        elseif type(Option) == "number" then
          for ind,Val in pairs(Options) do
            if ind == Option then
              Val.Active()
            end
          end
        end
      end
      function Dropdown:Set(Val1, Clear)
        if type(Val1) == "table" then
          AddNewOptions(Val1, not Clear)
        elseif type(Val1) == "function" then
          Callback = Val1
        end
      end
      return Dropdown
    end
    function Tab:AddSlider(Configs)
      local SName = Configs[1] or Configs.Name or Configs.Title or "Slider!"
      local SDesc = Configs.Desc or Configs.Description or ""
      local Min = Configs[2] or Configs.MinValue or Configs.Min or 10
      local Max = Configs[3] or Configs.MaxValue or Configs.Max or 100
      local Increase = Configs[4] or Configs.Increase or 1
      local Callback = Funcs:GetCallback(Configs, 6)
      local Flag = Configs[7] or Configs.Flag or false
      local Default = Configs[5] or Configs.Default or 25
      if CheckFlag(Flag) then Default = GetFlag(Flag) end
      Min, Max = Min / Increase, Max / Increase
      
      local Button, LabelFunc = ButtonFrame(Container, SName, SDesc, UDim2.new(1, -180))
      
      local SliderHolder = Create("TextButton", Button, {
        Size = UDim2.new(0.45, 0, 1),
        Position = UDim2.new(1),
        AnchorPoint = Vector2.new(1, 0),
        AutoButtonColor = false,
        Text = "",
        BackgroundTransparency = 1
      })
      
      local SliderBar = InsertTheme(Create("Frame", SliderHolder, {
        BackgroundColor3 = Theme["Color Stroke"],
        Size = UDim2.new(1, -20, 0, 6),
        Position = UDim2.new(0.5, 0, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5)
      }), "Stroke")Make("Corner", SliderBar)
      
      local Indicator = InsertTheme(Create("Frame", SliderBar, {
        BackgroundColor3 = Theme["Color Theme"],
        Size = UDim2.fromScale(0.3, 1),
        BorderSizePixel = 0
      }), "Theme")Make("Corner", Indicator)
      
      local SliderIcon = Create("Frame", SliderBar, {
        Size = UDim2.new(0, 6, 0, 12),
        BackgroundColor3 = Color3.fromRGB(220, 220, 220),
        Position = UDim2.fromScale(0.3, 0.5),
        AnchorPoint = Vector2.new(0.5, 0.5),
        BackgroundTransparency = 0.2
      })Make("Corner", SliderIcon)
      
      local LabelVal = InsertTheme(Create("TextLabel", SliderHolder, {
        Size = UDim2.new(0, 14, 0, 14),
        AnchorPoint = Vector2.new(1, 0.5),
        Position = UDim2.new(0, 0, 0.5),
        BackgroundTransparency = 1,
        TextColor3 = Theme["Color Text"],
        Font = Enum.Font.FredokaOne,
        TextSize = 12
      }), "Text")
      
      local UIScale = Create("UIScale", LabelVal)
      
      local BaseMousePos = Create("Frame", SliderBar, {
        Position = UDim2.new(0, 0, 0.5, 0),
        Visible = false
      })
      
      local function UpdateLabel(NewValue)
        local Number = tonumber(NewValue * Increase)
        Number = math.floor(Number * 100) / 100
        
        Default, LabelVal.Text = Number, tostring(Number)
        Funcs:FireCallback(Callback, Default)
      end
      
      local function ControlPos()
        local MousePos = Player:GetMouse()
        local APos = MousePos.X - BaseMousePos.AbsolutePosition.X
        local ConfigureDpiPos = APos / SliderBar.AbsoluteSize.X
        
        SliderIcon.Position = UDim2.new(math.clamp(ConfigureDpiPos, 0, 1), 0, 0.5, 0)
      end
      
      local function UpdateValues()
        Indicator.Size = UDim2.new(SliderIcon.Position.X.Scale, 0, 1, 0)
        local SliderPos = SliderIcon.Position.X.Scale
        local NewValue = math.floor(((SliderPos * Max) / Max) * (Max - Min) + Min)
        UpdateLabel(NewValue)
      end
      
      SliderHolder.MouseButton1Down:Connect(function()
        CreateTween({SliderIcon, "Transparency", 0, 0.3})
        Container.ScrollingEnabled = false
        while UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do task.wait()
          ControlPos()
        end
        CreateTween({SliderIcon, "Transparency", 0.2, 0.3})
        Container.ScrollingEnabled = true
        SetFlag(Flag, Default)
      end)
      
      LabelVal:GetPropertyChangedSignal("Text"):Connect(function()
        UIScale.Scale = 0.3
        CreateTween({UIScale, "Scale", 1.2, 0.1})
        CreateTween({LabelVal, "Rotation", math.random(-1, 1) * 5, 0.15, true})
        CreateTween({UIScale, "Scale", 1, 0.2})
        CreateTween({LabelVal, "Rotation", 0, 0.1})
      end)
      
			function SetSlider(NewValue)
			  if type(NewValue) ~= "number" then return end
			  
        local Min, Max = Min * Increase, Max * Increase
        
        local SliderPos = (NewValue - Min) / (Max - Min)
        
        SetFlag(Flag, NewValue)
        CreateTween({ SliderIcon, "Position", UDim2.fromScale(math.clamp(SliderPos, 0, 1), 0.5), 0.3, true })
			end;SetSlider(Default)
			
			SliderIcon:GetPropertyChangedSignal("Position"):Connect(UpdateValues)UpdateValues()
			
			local Slider = {}
      function Slider:Set(NewVal1, NewVal2)
        if NewVal1 and NewVal2 then
          LabelFunc:SetTitle(NewVal1)
          LabelFunc:SetDesc(NewVal2)
        elseif type(NewVal1) == "string" then
          LabelFunc:SetTitle(NewVal1)
        elseif type(NewVal1) == "function" then
          Callback = NewVal1
        elseif type(NewVal1) == "number" then
          SetSlider(NewVal1)
        end
      end
      function Slider:Callback(...) Funcs:InsertCallback(Callback, ...)(tonumber(Default)) end
      function Slider:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function Slider:Destroy() Button:Destroy() end
			return Slider
    end
    function Tab:AddTextBox(Configs)
      local TName = Configs[1] or Configs.Name or Configs.Title or "Text Box"
      local TDesc = Configs.Desc or Configs.Description or ""
      local TDefault = Configs[2] or Configs.Default or ""
      local TPlaceholderText = Configs[5] or Configs.PlaceholderText or "Input"
      local TClearText = Configs[3] or Configs.ClearText or false
      local Callback = Funcs:GetCallback(Configs, 4)
      
      if type(TDefault) ~= "string" or TDefault:gsub(" ", ""):len() < 1 then
        TDefault = false
      end
      
      local Button, LabelFunc = ButtonFrame(Container, TName, TDesc, UDim2.new(1, -38))
      
      local SelectedFrame = InsertTheme(Create("Frame", Button, {
        Size = UDim2.new(0, 150, 0, 18),
        Position = UDim2.new(1, -10, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        BackgroundColor3 = Theme["Color Stroke"]
      }), "Stroke")Make("Corner", SelectedFrame, UDim.new(0, 4))
      
      local TextBoxInput = InsertTheme(Create("TextBox", SelectedFrame, {
        Size = UDim2.new(0.85, 0, 0.85, 0),
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.new(0.5, 0, 0.5, 0),
        BackgroundTransparency = 1,
        Font = Enum.Font.GothamBold,
        TextScaled = true,
        TextColor3 = Theme["Color Text"],
        ClearTextOnFocus = TClearText,
        PlaceholderText = TPlaceholderText,
        Text = ""
      }), "Text")
      
      local Pencil = Create("ImageLabel", SelectedFrame, {
        Size = UDim2.new(0, 12, 0, 12),
        Position = UDim2.new(0, -5, 0.5),
        AnchorPoint = Vector2.new(1, 0.5),
        Image = "rbxassetid://15637081879",
        BackgroundTransparency = 1
      })
      
      local TextBox = {}
      local function Input()
        local Text = TextBoxInput.Text
        if Text:gsub(" ", ""):len() > 0 then
          if type(TextBox.OnChanging) then Text = TextBox.OnChanging(Text) or Text end
          Funcs:FireCallback(Callback, Text)
          TextBoxInput.Text = Text
        end
      end
      
      TextBoxInput.FocusLost:Connect(Input)Input()
      
      TextBoxInput.FocusLost:Connect(function()
        CreateTween({Pencil, "ImageColor3", Color3.fromRGB(255, 255, 255), 0.2})
      end)
      TextBoxInput.Focused:Connect(function()
        CreateTween({Pencil, "ImageColor3", Theme["Color Theme"], 0.2})
      end)
      
      TextBox.OnChanging = false
      function TextBox:Visible(...) Funcs:ToggleVisible(Button, ...) end
      function TextBox:Destroy() Button:Destroy() end
      return TextBox
    end
    function Tab:AddDiscordInvite(Configs)
      local Title = Configs[1] or Configs.Name or Configs.Title or "Discord"
      local Desc = Configs.Desc or Configs.Description or ""
      local Logo = Configs[2] or Configs.Logo or ""
      local Invite = Configs[3] or Configs.Invite or ""
      
      local InviteHolder = Create("Frame", Container, {
        Size = UDim2.new(1, 0, 0, 80),
        Name = "Option",
        BackgroundTransparency = 1
      })
      
      local InviteLabel = Create("TextLabel", InviteHolder, {
        Size = UDim2.new(1, 0, 0, 15),
        Position = UDim2.new(0, 5),
        TextColor3 = Color3.fromRGB(40, 150, 255),
        Font = Enum.Font.GothamBold,
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 10,
        Text = Invite
      })
      
      local FrameHolder = InsertTheme(Create("Frame", InviteHolder, {
        Size = UDim2.new(1, 0, 0, 65),
        AnchorPoint = Vector2.new(0, 1),
        Position = UDim2.new(0, 0, 1),
        BackgroundColor3 = Theme["Color Hub 2"]
      }), "Frame")Make("Corner", FrameHolder)
      
      local ImageLabel = Create("ImageLabel", FrameHolder, {
        Size = UDim2.new(0, 30, 0, 30),
        Position = UDim2.new(0, 7, 0, 7),
        Image = Logo,
        BackgroundTransparency = 1
      })Make("Corner", ImageLabel, UDim.new(0, 4))Make("Stroke", ImageLabel)
      
      local LTitle = InsertTheme(Create("TextLabel", FrameHolder, {
        Size = UDim2.new(1, -52, 0, 15),
        Position = UDim2.new(0, 44, 0, 7),
        Font = Enum.Font.GothamBold,
        TextColor3 = Theme["Color Text"],
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 10,
        Text = Title
      }), "Text")
      
      local LDesc = InsertTheme(Create("TextLabel", FrameHolder, {
        Size = UDim2.new(1, -52, 0, 0),
        Position = UDim2.new(0, 44, 0, 22),
        TextWrapped = "Y",
        AutomaticSize = "Y",
        Font = Enum.Font.Gotham,
        TextColor3 = Theme["Color Dark Text"],
        TextXAlignment = "Left",
        BackgroundTransparency = 1,
        TextSize = 8,
        Text = Desc
      }), "DarkText")
      
      local JoinButton = Create("TextButton", FrameHolder, {
        Size = UDim2.new(1, -14, 0, 16),
        AnchorPoint = Vector2.new(0.5, 1),
        Position = UDim2.new(0.5, 0, 1, -7),
        Text = "Join",
        Font = Enum.Font.GothamBold,
        TextSize = 12,
        TextColor3 = Color3.fromRGB(220, 220, 220),
        BackgroundColor3 = Color3.fromRGB(50, 150, 50)
      })Make("Corner", JoinButton, UDim.new(0, 5))
      
      local ClickDelay
      JoinButton.Activated:Connect(function()
        setclipboard(Invite)
        if ClickDelay then return end
        
        ClickDelay = true
        SetProps(JoinButton, {
          Text = "Copied to Clipboard",
          BackgroundColor3 = Color3.fromRGB(100, 100, 100),
          TextColor3 = Color3.fromRGB(150, 150, 150)
        })task.wait(5)
        SetProps(JoinButton, {
          Text = "Join",
          BackgroundColor3 = Color3.fromRGB(50, 150, 50),
          TextColor3 = Color3.fromRGB(220, 220, 220)
        })ClickDelay = false
      end)
      
      local DiscordInvite = {}
      function DiscordInvite:Destroy() InviteHolder:Destroy() end
      function DiscordInvite:Visible(...) Funcs:ToggleVisible(InviteHolder, ...) end
      return DiscordInvite
    end
    return Tab
  end
  
  CloseButton.Activated:Connect(Window.CloseBtn)
  MinimizeButton.Activated:Connect(Window.MinimizeBtn)
  return Window
end
return redzlib
