storage.N35v17 = storage.N35v17 or {
  version = "0.1",
  enabled = true,
  health = {},
  runes = {},
  pvp = {},
  tools = {},
  cave = {}
}

N35v17 = N35v17 or {}
N35v17.config = storage.N35v17

if rootWidget then
  N35v17SettingsWindow = UI.createWindow('N35v17SettingsWindow')
  N35v17SettingsWindow:hide()

  N35v17SettingsWindow.closeButton.onClick = function()
    N35v17SettingsWindow:hide()
  end

  N35v17SettingsWindow.saveBtn.onClick = function()
    warn("N35v17 config guardada.")
  end

  N35v17SettingsWindow.resetBtn.onClick = function()
    storage.N35v17 = {
      version = "0.1",
      enabled = true,
      health = {},
      runes = {},
      pvp = {},
      tools = {},
      cave = {}
    }

    N35v17.config = storage.N35v17
    warn("N35v17 config reiniciada.")
  end

  N35v17SettingsWindow.backupBtn.onClick = function()
    warn("N35v17 v" .. tostring(N35v17.config.version))
  end
end