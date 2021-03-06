-----------------------
-- Window management --
-----------------------

hs.loadSpoon("Lunette")

customBindings = {
	-- Resizing
	fullScreen = {
		{{"ctrl", "alt", "cmd"}, "up"},
	},
	center = {
		{{"ctrl", "alt", "cmd"}, "down"},
	},
	-- Moving
    nextThird = false,
    prevThird = false,
	nextDisplay = {
		{{"ctrl", "alt"}, "right"},
	},
	prevDisplay = {
		{{"ctrl", "alt"}, "left"},

	}
}

spoon.Lunette:bindHotkeys(customBindings)

------------
-- Macros --
------------

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "D", function() hs.eventtap.keyStrokes(os.date("%m-%d-%y")) end)

--------------------
-- Show/Hide Apps --
--------------------

hs.application.enableSpotlightForNameSearches(true)

function show_or_hide(name)
    return function()
    	if hs.application.get(name) and hs.application.get(name):isFrontmost() then
    		hs.application.get(name):hide()
    	else
	        hs.application.launchOrFocus(name)
	        if name == 'Finder' then
	            hs.appfinder.appFromName(name):activate()
	        end
	    end
    end
end


hs.hotkey.bind({"alt"}, "E", show_or_hide("Finder"))
hs.hotkey.bind({"alt"}, "F", show_or_hide("Firefox"))
hs.hotkey.bind({"alt"}, "V", show_or_hide("Visual Studio Code - Insiders"))
hs.hotkey.bind({"alt"}, "\\", show_or_hide("Sublime Text"))
hs.hotkey.bind({"alt"}, "/", show_or_hide("Bitwarden"))
hs.hotkey.bind({"alt"}, "M", show_or_hide("Spotify"))
hs.hotkey.bind({"alt"}, "N", show_or_hide("Notes"))

--------------------------------
-- Auto Reload Config on Save --
--------------------------------
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()

hs.alert.show("Hammerspoon config reloaded!")

