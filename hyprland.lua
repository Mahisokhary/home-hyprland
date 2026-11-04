-- Environment variables
hl.env("GTK_THEME", "Adwaita:dark")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.on("hyprland.start", function()
	hl.exec_cmd("~/.config/hypr/core/script/run-service waybar")
	hl.exec_cmd("~/.config/hypr/core/script/run-service awww awww-daemon")
	hl.exec_cmd("~/.config/hypr/core/script/run-service swaync")

	hl.exec_cmd("rhythmbox", { workspace="special:magic silent" })
	hl.exec_cmd("Telegram", { workspace="special:magic silent" })
	hl.exec_cmd("chromium", { workspace="special:magic silent" })
end)

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

