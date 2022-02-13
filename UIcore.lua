local ZUI_AudioDev = LibStub("AceAddon-3.0"):GetAddon("ZUI_AudioDev")

-------------Frames--------------
UIConfig = CreateFrame("Frame", "ZUIAudioFrame", UIParent, "BasicFrameTemplateWithInset");
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

UIConfig.MyScrollFrame = CreateFrame("ScrollFrame", "ZUIAudioMyScrollFrame", UIConfig, "UIPanelScrollFrameTemplate");
UIConfig.MyScrollFrame:SetPoint("TOPLEFT", "ZUIAudioFrame", "TOPLEFT", 20, -30);
UIConfig.MyScrollFrame:SetPoint("BOTTOMRIGHT", "ZUIAudioFrame", "BOTTOMRIGHT", -34, 8);

UIConfig.scrollChild = CreateFrame("Frame", "ScrollChild", UIConfig.MyScrollFrame);
UIConfig.MyScrollFrame:SetScrollChild(UIConfig.scrollChild);
UIConfig.scrollChild:SetWidth(260);
UIConfig.scrollChild:SetHeight(1000);

UIConfig.murlocBtn = ZUI_AudioDev:CreateButton("CENTER", UIConfig.scrollChild, "TOP", -10, 140, "Murlocs", "sound/creature/murloc/mmurlocaggroold.ogg");
UIConfig.dieingManBtn = ZUI_AudioDev:CreateButton("CENTER", UIConfig.murlocBtn, "TOP", -28, 140, "DieingMan", "sound/character/playerexertions/humanmalefinal/humanmalemaindeatha.ogg");
UIConfig.flagTakenBtn = ZUI_AudioDev:CreateButton("CENTER", UIConfig.dieingManBtn, "TOP", -28, 180, "Flag Taken", "sound/spells/pvpflagtaken.ogg");
UIConfig.Zelda = ZUI_AudioDev:CreateButton("CENTER", UIConfig.flagTakenBtn, "TOP", -28, 140, "ZELDA!", "Interface/AddOns/ZUI_AudioDev/Sounds/TheLegendaryHero-WindWaker.ogg");
UIConfig.Zelda2 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.Zelda, "TOP", -28, 140, "ZANT", "Interface/AddOns/ZUI_AudioDev/Sounds/ZantBattle-TwilightPrincess.ogg");
UIConfig.KA_1 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.Zelda2, "TOP", -28, 140, "Karazhan - Opera", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_OperaHarpsiWalkUni01.ogg");
UIConfig.KA_2 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_1, "TOP", -28, 140, "Karazhan - Organ", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_OperaOrganWalkUni01.ogg");
UIConfig.KA_3 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_2, "TOP", -28, 230, "Karazhan - Walk-General 5", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni05.ogg");
UIConfig.KA_4 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_3, "TOP", -28, 230, "Karazhan - Walk-General 6", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni06.ogg");
UIConfig.KA_5 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_4, "TOP", -28, 230, "Karazhan - Walk-General 7", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni07.ogg");
UIConfig.KA_6 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_5, "TOP", -28, 230, "Karazhan - Walk-Stage 2", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_BackstageWalkUni02.ogg");
UIConfig.KA_7 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_6, "TOP", -28, 230, "Karazhan - Foyer Intro 1", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_FoyerIntroUni01.ogg");
UIConfig.KA_8 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_7, "TOP", -28, 230, "Karazhan - Walk-Foyer 1", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_FoyerWalkUni01.ogg");
UIConfig.KA_9 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_8, "TOP", -28, 230, "Karazhan - Walk-Foyer 3", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_FoyerWalkUni03.ogg");
UIConfig.KA_10 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_9, "TOP", -28, 230, "Karazhan - Walk-Foyer 4", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_FoyerWalkUni04.ogg");
UIConfig.KA_11 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_10, "TOP", -28, 230, "Karazhan - Walk-General 1", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni01.ogg");
UIConfig.KA_12 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_11, "TOP", -28, 230, "Karazhan - Walk-General 2", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni02.ogg");
UIConfig.KA_13 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_12, "TOP", -28, 230, "Karazhan - Walk-General 3", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni03.ogg");
UIConfig.KA_14 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_13, "TOP", -28, 230, "Karazhan - Walk-General 4", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_GeneralWalkUni04.ogg");
UIConfig.KA_15 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_14, "TOP", -28, 230, "Karazhan - Walk-Malchezar 3", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_MalchezarWalkUni03.ogg");
UIConfig.KA_16 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_15, "TOP", -28, 230, "Karazhan - Stable Intro", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_StableIntroUni01.ogg");
UIConfig.KA_17 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_16, "TOP", -28, 230, "Karazhan - Walk-Stable 1", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_StableWalkUni01.ogg");
UIConfig.KA_18 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_17, "TOP", -28, 230, "Karazhan - Walk-Tower 1", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_TowerWalkUni01.ogg");
UIConfig.KA_19 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_18, "TOP", -28, 230, "Karazhan - Walk-Tower 2", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_TowerWalkUni02.ogg");
UIConfig.KA_20 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_19, "TOP", -28, 230, "Karazhan - Walk-Tower 3", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/KA_TowerWalkUni03.ogg");
UIConfig.KA_21 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_20, "TOP", -28, 140, "Karazhan - Sanctum", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/MUS_70_SanctumOfKarazhan_H1.ogg");
UIConfig.KA_22 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_21, "TOP", -28, 140, "Karazhan - Hour5", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/MUS_71_Karazhan_5H.ogg");
UIConfig.KA_23 = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_22, "TOP", -28, 140, "Karazhan - Vortex", "Interface/AddOns/ZUI_AudioDev/Sounds/Karazhan/MUS_71_Karazhan_Vortex_01.ogg");
UIConfig.IntroTheme = ZUI_AudioDev:CreateButton("CENTER", UIConfig.KA_23, "TOP", -28, 140, "WoW Intro Theme", 47598);

UIConfig.Buttons = {}
local Abtn;
for i, song in ipairs(ZUI_AudioDev.list) do
    if (i == 1) then
        Abtn = ZUI_AudioDev:CreateButton("CENTER", UIConfig.IntroTheme, "TOP", -28, 140, song.Song, song.Name);
    else
        Abtn = ZUI_AudioDev:CreateButton("CENTER", UIConfig.Buttons[i-1], "TOP", -28, 140, song.Song, song.Name);
    end
    table.insert(UIConfig.Buttons, Abtn);
end
UIConfig:Hide()