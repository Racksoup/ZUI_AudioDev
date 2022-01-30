-----------Namespaces------------
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("ZUI_AudioDev", "enUS", true)

---------MiniMapIcon-------------
local ZUI_AudioDev = LibStub("AceAddon-3.0"):NewAddon("ZUI_AudioDev", "AceConsole-3.0");
local ZUI_LDB = LibStub("LibDataBroker-1.1"):NewDataObject("ZUI_AudioDev!", {
    type = "data source",
    text = "ZUI_Audio_Dev!",
    icon = GetItemIcon(5045),
    OnClick = function() 
        if (UIConfig.showing == true)
        then
            UIConfig:Hide(); 
            UIConfig.showing = false;
        else 
            UIConfig:Show();
            UIConfig.showing = true;
        end
    end,
    OnTooltipShow = function(tooltip)
        tooltip:SetText("ZUI Audio Dev")
    end,
    });
local icon = LibStub("LibDBIcon-1.0");

-----------Functions-------------
function ZUI_AudioDev:OnInitialize() -- Obviously you'll need a ## SavedVariables: BunniesDB line in your TOC, duh! 
    self.db = LibStub("AceDB-3.0"):New("ZUIAudioDevDB", { profile = { minimap = { hide = false, }, }, }) 
    icon:Register("ZUI_Audio_Dev", ZUI_LDB, self.db.profile.minimap) 
end

function ZUI_AudioDev:CreateButton(point, relativeFrame, relativePoint, yOffset, width, text, soundFile)
    local btn = CreateFrame("Button", nil, relativeFrame, "InlineHyperlinkFrameTemplate");
    btn:SetPoint(point, relativeFrame, relativePoint, 0, yOffset);
    btn:SetSize(250, 10);
    btn:SetText(text);
    btn:SetNormalFontObject("GameFontNormalLarge");
    btn:SetHighlightFontObject("GameFontHighlightLarge");
    btn:SetScript("OnClick", function(self, button, down)
        PlayMusic(soundFile);
    end);
    return btn;
end

-- add playlist
function ZUI_AudioDev:AddPlayList(name, newlist)
    ZUI_AudioDev.list = newlist;
end

