baselines
baselineGemStone: spec
	spec for: #'gemstone' do: [
		spec baseline: 'Pillar' with: [
			spec repository: 'github://dassi/Pillar:projectVia/repository' ].
		spec package: 'MCLPlatformPortabilityGemstone' with: [ 
			spec
				requires: #('MCLPlatformPortability');
				repository: 'http://monticello.mindclue.dyndns.org:8753/mindclue' ].
		spec package: 'Via' with: [
			spec 
				includes: #('ViaPlatformGemstone');
				requires: #('MCLPlatformPortabilityGemstone');
				repository: 'github://talk-small-be-open/via'.].
		spec package: 'ViaPlatformGemstone' with: [
			spec
				repository: 'github://talk-small-be-open/via'.
		].
		spec
			group: 'Core' with: #('MockGemStone' ).
	]
