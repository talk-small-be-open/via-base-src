baselines
baselinePharo: spec
	spec for: #'pharo' do: [
		spec baseline: 'NeoJSON' with: [
			spec repository: 'github://svenvc/NeoJSON/repository'.
		].
		spec project: 'Pillar' with: [ 
			spec
				className: #ConfigurationOfPillar;
				versionString: '0.56';
				loads: #('html exporter' 'pillar exporter');
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/'
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
				requires: #('MockGemStone' 'MCLPlatformPortabilityPharo');
				repository: 'github://talk-small-be-open/via:master/src'.
			].
		spec package: 'ViaPlatformPharo' with: [
			spec
"				requires: #('Via');"
				repository: 'github://talk-small-be-open/via:master/src'.
		].
		spec
			group: 'Core' with: #('MockGemStone' ).
	].
