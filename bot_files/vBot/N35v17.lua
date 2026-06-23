setDefaultTab("Main")
dofile("/vBot/N35v17_Health.lua")
dofile("/vBot/N35v17_Runes.lua")
dofile("/vBot/N35v17_PvP.lua")
dofile("/vBot/N35v17_Settings.lua")
dofile("/vBot/N35v17_Tools.lua")
dofile("/vBot/N35v17_Cave.lua")

local panelName = "N35v17"

storage[panelName] = storage[panelName] or {
  enabled = true
}

local config = storage[panelName]

local ui = setupUI([[
Panel
  height: 20

  Button
    id: open
    anchors.left: parent.left
    anchors.right: parent.right
    height: 20
    text-align: center
    !text: tr('N35v17 Bot')
]])

ui:setId(panelName)

rootWidget = g_ui.getRootWidget()

if rootWidget then
  N35v17Window = UI.createWindow('N35v17Window')
  N35v17Window:hide()

   N35v17Window.healthBtn.onClick = function()

  if not N35v17HealthWindow then
    return
  end

  N35v17HealthWindow:show()
  N35v17HealthWindow:raise()
  N35v17HealthWindow:focus()

end

N35v17Window.runesBtn.onClick = function()
  if not N35v17RunesWindow then return end
  N35v17RunesWindow:show()
  N35v17RunesWindow:raise()
  N35v17RunesWindow:focus()
end

  N35v17Window.pvpBtn.onClick = function()
  if not N35v17PvPWindow then return end
  N35v17PvPWindow:show()
  N35v17PvPWindow:raise()
  N35v17PvPWindow:focus()
end

 N35v17Window.toolsBtn.onClick = function()
  if not N35v17ToolsWindow then return end

  N35v17ToolsWindow:show()
  N35v17ToolsWindow:raise()
  N35v17ToolsWindow:focus()
end

  N35v17Window.caveBtn.onClick = function()
  if not N35v17CaveWindow then return end

  N35v17CaveWindow:show()
  N35v17CaveWindow:raise()
  N35v17CaveWindow:focus()
end

  N35v17Window.settingsBtn.onClick = function()
  if not N35v17SettingsWindow then return end
  N35v17SettingsWindow:show()
  N35v17SettingsWindow:raise()
  N35v17SettingsWindow:focus()
end

  ui.open.onClick = function()
    N35v17Window:show()
    N35v17Window:raise()
    N35v17Window:focus()
  end

  N35v17Window.closeButton.onClick = function()
    N35v17Window:hide()
  end
end

print("[N35v17] Main menu loaded.")