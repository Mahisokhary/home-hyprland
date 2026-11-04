--
-- Core Configurations
--

hl.env("PATH", os.getenv("PATH") .. ":" .. os.getenv("QHOME_HYPRLAND_HOME") .. "/core/script")

require("core.workspace.workspace")
require("core.window.window")
require("core.keyboard")
require("core.keybinds")

