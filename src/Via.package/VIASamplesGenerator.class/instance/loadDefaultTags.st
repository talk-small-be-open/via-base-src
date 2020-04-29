as yet unclassified
loadDefaultTags
	self db websites do: [ :eachWebsite |
		{'d1'->'0-15 minuti'. 'd2'->'15-30 minuti'. 'd3'->'30-45 minuti'. 'd4'->'45-60 minuti'}
		do: [:each |
			(VIADurationTag findOrCreateByCode: each key website: eachWebsite)
				text: each value].

		{'Ascolto'. 'Lettura'. 'Grammatica'. 'Vocabolario'}
		do: [:each |
			(VIAActivityTypeTag findOrCreateByCode: each asLowercase website: eachWebsite)
			text: each].
		
		{'Cultura'. 'Persona'. 'Luoghi'. 'Economia'. 'Scuola'. 'Storia'. 'Scienza'. 'Altro'}
		do: [:each |
			(VIATopicTag findOrCreateByText: each website: eachWebsite)
			text: each].
		
		{'Articoli'. 'Sostantivi'}
		do: [:each |
			(VIAGrammarTopicTag findOrCreateByText: each website: eachWebsite)
			text: each].
		
		{'Ticino'. 'Grigioni italiano'. 'Italiano in svizzera'. 'Italia-Svizzera'. 'Emigrati svizzeri'. 'Politica linguistica'}
		do: [:each |
			(VIAContextTag findOrCreateByText: each website: eachWebsite)
			text: each].
	]