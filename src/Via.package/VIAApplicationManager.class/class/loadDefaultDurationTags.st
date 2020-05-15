data-seeding
loadDefaultDurationTags
	self db websites do: [ :eachWebsite |
		{'d1'->'0-15 minuti'. 'd2'->'15-30 minuti'. 'd3'->'30-45 minuti'. 'd4'->'45-60 minuti'}
		do: [:each |
			(VIADurationTag findOrCreateByCode: each key website: eachWebsite)
				text: each value]]