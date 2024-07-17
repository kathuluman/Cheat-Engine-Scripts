-- Adjust the opacity value as needed
local opacityValue = 220

-- Set main form properties
getMainForm().Color = 0x000000
getMainForm().AlphaBlend = true
getMainForm().AlphaBlendValue = opacityValue

-- Adjust Cheat Table panel (assuming it's the first control in the address list)
local cheatTablePanel = GetAddressList().Control[0]
cheatTablePanel.BackgroundColor = 0x000000
cheatTablePanel.AlphaBlend = true
cheatTablePanel.AlphaBlendValue = opacityValue

-- Set Cheat Table panel properties
cheatTablePanel.Width = 600  -- Adjust width as needed
cheatTablePanel.Height = 400  -- Adjust height as needed
cheatTablePanel.AnchorSideTop.Control = getMainForm()
cheatTablePanel.AnchorSideTop.Side = asrTop
cheatTablePanel.AnchorSideBottom.Control = getMainForm()
cheatTablePanel.AnchorSideBottom.Side = asrBottom
cheatTablePanel.AnchorSideLeft.Control = getMainForm()
cheatTablePanel.AnchorSideLeft.Side = asrLeft
cheatTablePanel.AnchorSideRight.Control = getMainForm()
cheatTablePanel.AnchorSideRight.Side = asrRight

-- Set other panel properties similarly
getMainForm().Panel1.Color = 0x000000
getMainForm().Panel1.AlphaBlend = true
getMainForm().Panel1.AlphaBlendValue = opacityValue

getMainForm().Panel2.Color = 0x000000
getMainForm().Panel2.AlphaBlend = true
getMainForm().Panel2.AlphaBlendValue = opacityValue

getMainForm().Panel3.Color = 0x000000
getMainForm().Panel3.AlphaBlend = true
getMainForm().Panel3.AlphaBlendValue = opacityValue

getMainForm().Panel4.Color = 0x000000
getMainForm().Panel4.AlphaBlend = true
getMainForm().Panel4.AlphaBlendValue = opacityValue

getMainForm().Panel5.Color = 0x000000
getMainForm().Panel5.AlphaBlend = true
getMainForm().Panel5.AlphaBlendValue = opacityValue

getMainForm().Panel6.Color = 0x000000
getMainForm().Panel6.AlphaBlend = true
getMainForm().Panel6.AlphaBlendValue = opacityValue

getMainForm().Panel7.Color = 0x000000
getMainForm().Panel7.AlphaBlend = true
getMainForm().Panel7.AlphaBlendValue = opacityValue

getMainForm().Panel8.Color = 0x000000
getMainForm().Panel8.AlphaBlend = true
getMainForm().Panel8.AlphaBlendValue = opacityValue

getMainForm().Panel9.Color = 0x000000
getMainForm().Panel9.AlphaBlend = true
getMainForm().Panel9.AlphaBlendValue = opacityValue

getMainForm().Panel10.Color = 0x000000
getMainForm().Panel10.AlphaBlend = true
getMainForm().Panel10.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel1.Color = 0x000000
getMemoryViewForm().Panel1.AlphaBlend = true
getMemoryViewForm().Panel1.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel2.Color = 0x000000
getMemoryViewForm().Panel2.AlphaBlend = true
getMemoryViewForm().Panel2.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel3.Color = 0x000000
getMemoryViewForm().Panel3.AlphaBlend = true
getMemoryViewForm().Panel3.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel4.Color = 0x000000
getMemoryViewForm().Panel4.AlphaBlend = true
getMemoryViewForm().Panel4.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel5.Color = 0x000000
getMemoryViewForm().Panel5.AlphaBlend = true
getMemoryViewForm().Panel5.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel6.Color = 0x000000
getMemoryViewForm().Panel6.AlphaBlend = true
getMemoryViewForm().Panel6.AlphaBlendValue = opacityValue

getMemoryViewForm().Panel7.Color = 0x000000
getMemoryViewForm().Panel7.AlphaBlend = true
getMemoryViewForm().Panel7.AlphaBlendValue = opacityValue

getSettingsForm().Color = 0x000000
getSettingsForm().AlphaBlend = true
getSettingsForm().AlphaBlendValue = opacityValue

getSettingsForm().Panel1.Color = 0x000000
getSettingsForm().Panel1.AlphaBlend = true
getSettingsForm().Panel1.AlphaBlendValue = opacityValue

getSettingsForm().Panel2.Color = 0x000000
getSettingsForm().Panel2.AlphaBlend = true
getSettingsForm().Panel2.AlphaBlendValue = opacityValue

getSettingsForm().Panel3.Color = 0x000000
getSettingsForm().Panel3.AlphaBlend = true
getSettingsForm().Panel3.AlphaBlendValue = opacityValue

getSettingsForm().Panel4.Color = 0x000000
getSettingsForm().Panel4.AlphaBlend = true
getSettingsForm().Panel4.AlphaBlendValue = opacityValue

getSettingsForm().Panel5.Color = 0x000000
getSettingsForm().Panel5.AlphaBlend = true
getSettingsForm().Panel5.AlphaBlendValue = opacityValue

getSettingsForm().Panel6.Color = 0x000000
getSettingsForm().Panel6.AlphaBlend = true
getSettingsForm().Panel6.AlphaBlendValue = opacityValue

getSettingsForm().Panel7.Color = 0x000000
getSettingsForm().Panel7.AlphaBlend = true
getSettingsForm().Panel7.AlphaBlendValue = opacityValue

getSettingsForm().Panel8.Color = 0x000000
getSettingsForm().Panel8.AlphaBlend = true
getSettingsForm().Panel8.AlphaBlendValue = opacityValue

getSettingsForm().Panel9.Color = 0x000000
getSettingsForm().Panel9.AlphaBlend = true
getSettingsForm().Panel9.AlphaBlendValue = opacityValue

getSettingsForm().Panel10.Color = 0x000000
getSettingsForm().Panel10.AlphaBlend = true
getSettingsForm().Panel10.AlphaBlendValue = opacityValue

getSettingsForm().Panel11.Color = 0x000000
getSettingsForm().Panel11.AlphaBlend = true
getSettingsForm().Panel11.AlphaBlendValue = opacityValue

GetSettings().Color = 0x000000
GetSettings().AlphaBlend = true
GetSettings().AlphaBlendValue = opacityValue

GetMemoryViewForm().Color = 0x000000
GetMemoryViewForm().AlphaBlend = true
GetMemoryViewForm().AlphaBlendValue = opacityValue
