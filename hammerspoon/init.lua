local modalKey = {"cmd", "alt", "ctrl" }
local resizeMappings = {
  h={x=0, y=0, w=0.5, h=1}, -- half-screen left
  j={x=0, y=0.5, w=1, h=0.5}, -- half-screen right
  k={x=0, y=0, w=1, h=0.5}, -- half-screen bottom
  l={x=0.5, y=0, w=0.5, h=1}, -- half-screen top
  m={x=0, y=0, w=1, h=1}, -- maximize screen
  u={x=0.5, y=0.5, w=0.5, h=0.5}, -- bottom right corner
  i={x=0, y=0.5, w=0.5, h=0.5}, -- bottom left corner
  o={x=0.5, y=0, w=0.5, h=0.5}, -- right left corner
  p={x=0, y=0, w=0.5, h=0.5}, -- top left corner


  b={x=.125, y=0.125, w=0.75, h=0.75}, -- 1/4 window and centered
  n={x=0.19, y=0.19, w=0.62, h=.62}, -- window centered
}

-- set screen resizing mapping
for key in pairs(resizeMappings) do
  hs.hotkey.bind(modalKey, key, function()
    local win = hs.window.focusedWindow()
    if win then win:moveToUnit(resizeMappings[key]) end
  end)
end

-- set app to full screen
hs.hotkey.bind(modalKey, "f", function()
  local win = hs.window.focusedWindow()
   win:setFullScreen(not win:isFullScreen())
end)

-- set app to center of screen
hs.hotkey.bind(modalKey, "c", function()
  local win = hs.window.focusedWindow()
  win:centerOnScreen(not win:isFullScreen())
end)


-- refresh hammerspoon with this file(init.lua)
hs.hotkey.bind(modalKey, "r", function()
  hs.reload()
end)

-- a number of shortcut key used to focus(or open) apps
local focusKeys = {
  a='Airmail 3',
  e='Firefox Developer Edition',
  d='Dash',
  t='iTerm 2',
  s='Simulator',
}

-- set focus key to hammerspoon
for key in pairs(focusKeys) do
  hs.hotkey.bind(modalKey, key, function()
    hs.application.launchOrFocus(focusKeys[key])
  end)
end


-- hs.hotkey.bind({"alt","shift"}, "l", function()
--   send_window_next_monitor()
-- end)
--
-- hs.hotkey.bind({"alt", "shift"}, "h", function()
--   send_window_prev_monitor()
-- end)
--
-- function send_window_next_monitor()
--   hs.alert.show("Next Monitor")
--   local win = hs.window.focusedWindow()
--   local nextScreen = win:screen():next()
--   win:moveToScreen(nextScreen)
-- end
--
-- function send_window_prev_monitor()
--   hs.alert.show("Prev Monitor")
--   local win = hs.window.focusedWindow()
--   local nextScreen = win:screen():previous()
--   win:moveToScreen(nextScreen)
-- end
