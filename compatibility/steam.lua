local forms = {
	"Steam Settings",
	"Friends List",
};

hl.window_rule({
	name	= "fix-steam-forms",
	match	= {
		class	= "steam",
		title	= "(" .. table.concat(forms, "|") .. ")",
	},
	center	= true,
	float	= true,
})

