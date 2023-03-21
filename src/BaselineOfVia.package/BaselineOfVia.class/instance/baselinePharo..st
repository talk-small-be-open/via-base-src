baselines
baselinePharo: spec
	spec for: #'pharo' do: [
		"TODO: OSSubprocess"

		spec baseline: 'NeoJSON' with: [
			spec repository: 'github://svenvc/NeoJSON/repository'.
		].
		spec baseline: 'NeoCSV' with: [
			spec repository: 'github://svenvc/NeoCSV/repository'.
		].
		spec group: 'CSV' with: #('NeoCSV').

		spec baseline: 'Seaside3' with: [
			spec
				loads: #('Base' 'Core' 'JSON' 'Email' 'Javascript' 'JQuery' 'Development')
		].
	
		spec package: 'MockGemStone' with: [
			spec
				requires: #('Seaside3');
				repository: 'github://talk-small-be-open/utils:master/src'.
		].
		spec package: 'MCLPlatformPortabilityPharo' with: [ 
			spec
				requires: #('MCLPlatformPortability');
				repository: 'github://talk-small-be-open/utils:master/src'.
		].
		spec package: 'Via' with: [
			spec 
				includes: #('ViaPlatformPharo');
				requires: #('MockGemStone' 'MCLPlatformPortabilityPharo').
			].
		spec package: 'ViaPlatformPharo' with: [
			spec
				requires: #('Via').
		].
		spec
			group: 'Core' with: #('MockGemStone' ).
	].
