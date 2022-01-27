-----------Namespaces------------
local _, core = ...;
core.Config = {};

local Config = core.Config;
local UIConfig;


-----------Functions-------------
function Config:CreateButton(point, relativeFrame, relativePoint, yOffset, width, text, soundFile)
    local btn = CreateFrame("Button", nil, relativeFrame, "GameMenuButtonTemplate");
    btn:SetPoint(point, relativeFrame, relativePoint, 0, yOffset);
    btn:SetSize(width, 40);
    btn:SetText(text);
    btn:SetNormalFontObject("GameFontNormalLarge");
    btn:SetHighlightFontObject("GameFontHighlightLarge");
    btn:SetScript("OnClick", function(self, button, down)
        PlayMusic(soundFile);
    end);
    return btn;
end

-------------Frames--------------
local UIConfig = CreateFrame("Frame", "ZUIAudioFrame", UIParent, "BasicFrameTemplateWithInset");
UIConfig:SetSize(300, 420); -- width, height
UIConfig:SetPoint("CENTER");
UIConfig:SetMovable(true);
UIConfig:EnableMouse(true);
UIConfig:RegisterForDrag("LeftButton");
UIConfig:SetScript("OnDragStart", UIConfig.StartMoving);
UIConfig:SetScript("OnDragStop", UIConfig.StopMovingOrSizing);

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 6, 1);
UIConfig.title:SetText("ZUI Audio Dev");	

UIConfig.MyScrollBar = CreateFrame("ScrollFrame", "ZUIAudioMyScrollBar", UIConfig, "UIPanelScrollFrameTemplate");
UIConfig.MyScrollBar:SetPoint("TOPLEFT", "ZUIAudioFrame", "TOPLEFT", 4, -8);
UIConfig.MyScrollBar:SetPoint("BOTTOMRIGHT", "ZUIAudioFrame", "BOTTOMRIGHT", -3, 4);

UIConfig.scrollChild = CreateFrame("Frame");
UIConfig.MyScrollBar:SetScrollChild(UIConfig.scrollChild);
UIConfig.scrollChild:SetWidth(200);
UIConfig.scrollChild:SetHeight(1);

local title = UIConfig.scrollChild:CreateFontString("ARTWORK", nil, "GameFontNormalLarge")
title:SetPoint("TOP")
title:SetText("MyAddOn")

local footer = UIConfig.scrollChild:CreateFontString("ARTWORK", nil, "GameFontNormal")
footer:SetPoint("TOP", 0, -5000)
footer:SetText("This is 5000 below the top, so the scrollChild automatically expanded.")

UIConfig.murlocBtn = Config:CreateButton("CENTER", UIConfig.MyScrollBar, "TOP", -70, 140, "Murlocs", "sound/creature/murloc/mmurlocaggroold.ogg");
UIConfig.dieingManBtn = Config:CreateButton("CENTER", UIConfig.murlocBtn, "TOP", -70, 140, "DieingMan", "sound/character/playerexertions/humanmalefinal/humanmalemaindeatha.ogg");
UIConfig.flagTakenBtn = Config:CreateButton("CENTER", UIConfig.dieingManBtn, "TOP", -70, 180, "Flag Taken", "sound/spells/pvpflagtaken.ogg");
UIConfig.Zelda = Config:CreateButton("CENTER", UIConfig.flagTakenBtn, "TOP", -70, 140, "ZELDA!", "Interface/AddOns/ZUI_AudioDev/Sounds/TheLegendaryHero-WindWaker.ogg");

















-----------extra-----------

SLASH_RELOADUI1 = "/rl"
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs"
SlashCmdList.FRAMESTK = function()
    LoadAddOn('Blizzard_DebugTools')
    FrameStackTooltip_Toggle()
end

for i = 1, NUM_CHAT_WINDOWS do 
    _G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end