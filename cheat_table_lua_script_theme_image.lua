local tableBackgroundPicture = 'image1.jpg'
local tableBackgroundPicture1 = 'image2.png'

-- Assuming AL is the AddressList
local AL = getAddressList()
local MF = getMainForm()

-- Set colors and attributes
AL.Control[0].Color = 0x202020
AL.CheckboxColor = 0xFFFFFF
AL.CheckboxActiveColor = 0x0000FF
AL.CheckboxSelectedColor = 0xFFFFFF
AL.CheckboxActiveSelectedColor = 0x0000FF
MF.Panel4.BevelColor = 0
AL.BevelColor = 0
MF.advancedbutton.Color = 0
MF.CommentButton.Color = 0
MF.Panel4.Color = 0
MF.advancedbutton.Font.Color = 0x00FF00
MF.CommentButton.Font.Color = 0x00FF00
-- The following lines are removed to keep the buttons visible and enabled
-- MF.miTable.Visible = false
-- MF.miTable.Enabled = false
-- MF.mi3d.Visible = false
-- MF.miHelp.Visible = false

AddressList.setLayeredAttributes(0xffffff, 200, 0x2)
MainForm.Panel1.setLayeredAttributes(0xffffff, 255, 0x2)

-- Load background image
img = img or createImage(MF.Panel1)
img.setSize(MF.Panel1.Width, MF.Panel1.Height)
img.setPosition(0, 0)
img.Picture.loadFromStream(findTableFile(tableBackgroundPicture).stream)
img.Stretch = true

-- Opacity settings
local opacityValue = 220  -- Adjust this value (0-255) to set the desired opacity

MF.Color = 0x000000
MF.AlphaBlend = true
MF.AlphaBlendValue = opacityValue

MF.Foundlist3.Color = 0x000000  -- Addresses list color panel
MF.Foundlist3.AlphaBlend = true
MF.Foundlist3.AlphaBlendValue = opacityValue

AL.Control[0].BackgroundColor = 0x000000  -- Cheat table panel
AL.Control[0].AlphaBlend = true
AL.Control[0].AlphaBlendValue = opacityValue

-- Set opacity for main form panels
local panels = {
    MF.Panel1, MF.Panel2, MF.Panel3, MF.Panel4,
    MF.Panel5, MF.Panel6, MF.Panel7, MF.Panel8,
    MF.Panel9, MF.Panel10
}

for _, panel in ipairs(panels) do
    panel.Color = 0x000000
    panel.AlphaBlend = true
    panel.AlphaBlendValue = opacityValue
end

-- Set opacity for Memory View Form panels
local MVF = getMemoryViewForm()
local mvfPanels = {
    MVF.Panel1, MVF.Panel2, MVF.Panel3, MVF.Panel4,
    MVF.Panel5, MVF.Panel6, MVF.Panel7
}

for _, panel in ipairs(mvfPanels) do
    panel.Color = 0x000000
    panel.AlphaBlend = true
    panel.AlphaBlendValue = opacityValue
end

-- Set opacity for Settings Form panels
local SF = getSettingsForm()
local sfPanels = {
    SF.Panel1, SF.Panel2, SF.Panel3, SF.Panel4,
    SF.Panel5, SF.Panel6, SF.Panel7, SF.Panel8,
    SF.Panel9, SF.Panel10, SF.Panel11
}

for _, panel in ipairs(sfPanels) do
    panel.Color = 0x000000
    panel.AlphaBlend = true
    panel.AlphaBlendValue = opacityValue
end

SF.Color = 0x000000
SF.AlphaBlend = true
SF.AlphaBlendValue = opacityValue

MVF.Color = 0x000000
MVF.AlphaBlend = true
MVF.AlphaBlendValue = opacityValue

-- Set image size and position after panel size adjustment
MF.Panel1.OnResize = function()
    img.setSize(MF.Panel1.Width, MF.Panel1.Height)
    img.setPosition(0, 0)
end

-- Trigger the resize function to set initial size and position
MF.Panel1.OnResize()
