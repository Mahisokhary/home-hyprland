hl.window_rule({
	name	= "waybar-launched",
	match	= {
		class	= "(kitty|org.pulseaudio.pavucontrol)",
		title	= "(waybar-.*|Volume Control)",
	},
	size	= "728 435",
	center	= true,
	float	= true,
})

