-- Environment variables
if not os.getenv("QHOME_HYPRLAND_HOME") then
	hl.env("QHOME_HYPRLAND_HOME", os.getenv("HOME") .. "/.config/hypr/")
end
hl.env("GTK_THEME", "Adwaita:dark")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Apps
APP_TERMINAL="kitty"
APP_LAUNCHER="rofi -show drun -show-icons"
APP_FILES="nautilus --new-window"
APP_USER_SERVICE_CTL="uuctl rofi"
TRANSPARENT_APPS_CLASSES = {
	"kitty",
	"org.gnome.Rhythmbox3",
	"jetbrains-.*",
	"org.telegram.desktop",
	"org.gnome.Nautilus",
}
SERVICES = {
	"waybar",
	"awww-daemon",
	"swaync",
}

-- Configuration
MAIN_MOD = "SUPER"
LAYOUT = "scrolling"
THEME = "default"

-- Environment variables
hl.env("QHOME_HYPRLAND_THEME", THEME)

-- Modules
require("core.core")
require("layout.layout")
require("design.design")
require("compatibility.compatibility")

local function run_services()
	for index, service in ipairs(SERVICES) do
		hl.exec_cmd("qhome-hyprland-run-service-themed " .. service)
	end
end

hl.on("hyprland.start", function()
	run_services()

	hl.exec_cmd("rhythmbox", { workspace="special:magic silent" })
	hl.exec_cmd("Telegram", { workspace="special:magic silent" })
	hl.exec_cmd("chromium", { workspace="special:magic silent" })
end)
hl.on("config.reloaded", run_services)

