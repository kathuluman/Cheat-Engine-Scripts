{$lua}
if syntaxcheck then return end

-- Function to launch GTA 5 through Steam
function launchSteamGTA5()
  local steamURL = "steam://rungameid/271590"
  shellExecute(steamURL)
  -- Automatically attach to GTA5.exe process after launching via Steam
  attachToProcess("GTA5.exe")
end

-- Function to launch GTA 5 through Epic Games Launcher
function launchEpicGTA5()
  local epicURL = "com.epicgames.launcher://apps/0584d2013f0149a791e7b9bad0eec102%3A6e563a2c0f5f46e3b4e88b5f4ed50cca%3A9d2d0eb64d5c44529cece33fe2a46482?action=launch&silent=true"
  shellExecute(epicURL)
  -- Automatically attach to GTA5.exe process after launching via Epic Games
  attachToProcess("GTA5.exe")
end

-- Function to create and display the launcher options form
function showLauncherOptions()
    -- Create the form
    local form = createForm(false)
    form.Caption = "GTA 5 Launcher"
    form.Width = 400 -- Adjust width as needed
    form.Height = 250 -- Adjust height as needed
    form.Color = 0x000000 -- Pitch black background

    -- Title label
    local lblTitle = createLabel(form)
    lblTitle.Caption = "Launch GTA"
    lblTitle.Font.Size = 16
    lblTitle.Font.Color = 0x00FF00 -- Green text
    lblTitle.AutoSize = true -- Automatically adjust width based on text
    lblTitle.Left = (form.Width - lblTitle.Width) / 2 -- Center horizontally
    lblTitle.Top = 20 -- Top margin
    lblTitle.Parent = form

    -- Create buttons for Steam and Epic Games options
    local btnWidth = 300
    local btnHeight = 30

    local btnSteam = createButton(form)
    btnSteam.Caption = "Start GTA 5 via Steam"
    btnSteam.Left = (form.Width - btnWidth) / 2
    btnSteam.Top = 90 -- Adjusted position to be lower
    btnSteam.Width = btnWidth
    btnSteam.Height = btnHeight
    btnSteam.OnClick = launchSteamGTA5
    btnSteam.Color = 0x000000 -- Black background
    btnSteam.Font.Color = 0x00FF00 -- Green text
    btnSteam.Parent = form

    local btnEpicGames = createButton(form)
    btnEpicGames.Caption = "Start GTA 5 via Epic Games"
    btnEpicGames.Left = (form.Width - btnWidth) / 2
    btnEpicGames.Top = 140 -- Adjusted position to be lower
    btnEpicGames.Width = btnWidth
    btnEpicGames.Height = btnHeight
    btnEpicGames.OnClick = launchEpicGTA5
    btnEpicGames.Color = 0x000000 -- Black background
    btnEpicGames.Font.Color = 0x00FF00 -- Green text
    btnEpicGames.Parent = form

    -- Ensure form is visible and centered
    form.CenterScreen() -- Center the form on the screen
    form.Show()
end

-- Function to attach to GTA5.exe process with waiting loop
function attachToProcess(processName)
  local processID = 0
  while processID == 0 do
    processID = getProcessIDFromProcessName(processName)
    if processID == 0 then
      sleep(1000) -- Wait for 1 second before checking again
    end
  end

  openProcess(processID) -- Attach to GTA5.exe process once found

  -- Show success message after successful attachment
  showSuccessMessage()
end

-- Function to show success message after successful attachment
function showSuccessMessage()
  -- Create the success message form
  local form = createForm(false)
  form.Caption = "Injection Success"
  form.Width = 300
  form.Height = 120
  form.Color = 0x000000 -- Black background

  -- Success message label
  local lblSuccess = createLabel(form)
  lblSuccess.Caption = "Injected Successfully!"
  lblSuccess.Font.Size = 14
  lblSuccess.Font.Color = 0x00FF00 -- Green text
  lblSuccess.AutoSize = true
  lblSuccess.Left = (form.Width - lblSuccess.Width) / 2
  lblSuccess.Top = 30
  lblSuccess.Parent = form

  -- OK button
  local btnOK = createButton(form)
  btnOK.Caption = "OK"
  btnOK.Left = (form.Width - 60) / 2
  btnOK.Top = 70
  btnOK.Width = 60
  btnOK.Height = 25
  btnOK.ModalResult = mrOK -- Close form when OK is clicked
  btnOK.OnClick = function() form.Close() end
  btnOK.Parent = form

  -- Ensure form is visible and centered
  form.CenterScreen()
  form.ShowModal()
end

-- Enable the script and show the launcher options form
[ENABLE]
showLauncherOptions()

[DISABLE]
-- Any disable code if necessary
