baselines
baselineGemStone: spec
	spec for: #'gemstone' do: [
		spec baseline: 'NeoJSON' with: [
			spec repository: 'github://GsDevKit/NeoJSON:gs_master/repository'.
		].
		spec baseline: 'Pillar' with: [
			spec repository: 'github://dassi/Pillar:projectVia/repository' ].
		spec package: 'MCLPlatformPortabilityGemstone' with: [ 
			spec
				requires: #('MCLPlatformPortability');
				repository: 'github://talk-small-be-open/utils:master/src' ].
		spec package: 'Via' with: [
			spec 
"TODO				includes: #('ViaPlatformGemstone');"
				requires: #('MCLPlatformPortabilityGemstone');
				repository: 'github://talk-small-be-open/via:master/src'.
		].
		spec package: 'ViaPlatformGemstone' with: [
			spec
				requires: #('Via');
				repository: 'github://talk-small-be-open/via:master/src'.
		].

"		spec
			group: 'Core' with: #('MockGemStone' )."
	]
