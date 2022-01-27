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

---------------------------------
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

UIConfig.ScrollFrame = CreateFrame("ScrollFrame", "ZUIAudioScrollFrame", UIConfig, "FauxScrollFrameTemplate");
UIConfig.ScrollFrame:SetScript("OnVerticalScroll", function(self, offset)
	FauxScrollFrame_OnVerticalScroll(self, offset, BUTTON_HEIGHT, update)
end)
UIConfig.ScrollFrame:SetPoint("TOPLEFT", "ZUIAudioFrame", "TOPLEFT", 4, -8);
UIConfig.ScrollFrame:SetPoint("BOTTOMRIGHT", "ZUIAudioFrame", "BOTTOMRIGHT", -3, 4);

UIConfig.murlocBtn = Config:CreateButton("CENTER", UIConfig, "TOP", -70, 140, "Murlocs", "sound/creature/murloc/mmurlocaggroold.ogg");
UIConfig.dieingManBtn = Config:CreateButton("CENTER", UIConfig.murlocBtn, "TOP", -70, 140, "DieingMan", "sound/character/playerexertions/humanmalefinal/humanmalemaindeatha.ogg");
UIConfig.flagTakenBtn = Config:CreateButton("CENTER", UIConfig.dieingManBtn, "TOP", -70, 180, "Flag Taken", "sound/spells/pvpflagtaken.ogg");
UIConfig.Zelda= Config:CreateButton("CENTER", UIConfig.flagTakenBtn, "TOP", -70, 140, "ZELDA!", "Interface/AddOns/ZUI_AudioDev/Sounds/TheLegendaryHero-WindWaker.ogg");

















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