require("design.theme." .. THEME .. "." .. THEME)

hl.env("PATH", os.getenv("PATH") .. ":" .. os.getenv("QHOME_HYPRLAND_HOME") .. "/design/script")

hl.window_rule({
	name  = "transparent-apps",
	match = {
		class = "^(" .. table.concat(TRANSPARENT_APPS_CLASSES, "|") .. ")$"
	},
	opacity = 0.85
})

