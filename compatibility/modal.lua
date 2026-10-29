local modals = {
	"hyprland-share-picker"
};

hl.window_rule({
	name	= "modal",
	match	= {
		class	= "(" .. table.concat(modals, "|") .. ")",
	},
	size	= "728 435",
	center	= true,
	float	= true,
})

