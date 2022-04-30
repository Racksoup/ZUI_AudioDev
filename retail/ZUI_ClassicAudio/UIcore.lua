local ZUI_ClassicAudio = LibStub("AceAddon-3.0"):GetAddon("ZUI_ClassicAudio")

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

UIConfig.Buttons = {}
local Abtn;
for i, song in ipairs(ZUI_ClassicAudio.list) do
    if (i == 1) then
        Abtn = ZUI_ClassicAudio:CreateButton("CENTER", UIConfig.scrollChild, "TOP", -28, 140, song.Song, song.Name);
    else
        Abtn = ZUI_ClassicAudio:CreateButton("CENTER", UIConfig.Buttons[i-1], "TOP", -28, 140, song.Song, song.Name);
    end
    table.insert(UIConfig.Buttons, Abtn);
end
UIConfig:Hide()