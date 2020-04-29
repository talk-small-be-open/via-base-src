baselines
baselinePharo: spec
	spec for: #'pharo' do: [
		spec project: 'Pillar' with: [ 
			spec
				className: #ConfigurationOfPillar;
				versionString: '0.56';
				loads: #('html exporter' 'pillar exporter');
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/'
		].
		spec package: 'MockGemStone' with: [
			spec repository: 'http://monticello.mindclue.dyndns.org:8753/mindclue' ].
		spec package: 'MCLPlatformPortabilityPharo' with: [ 
			spec
				requires: #('MCLPlatformPortability');
				repository: 'http://monticello.mindclue.dyndns.org:8753/mindclue' ].
		spec package: 'Via' with: [
			spec 
				includes: #('ViaPlatformPharo');
				requires: #('MockGemStone' 'MCLPlatformPortabilityPharo');
				repository: 'http://monticello.mindclue.dyndns.org:8753/321via'.
"Später:				repository: 'github://talk-small-be-open/via'. "].
		spec package: 'ViaPlatformPharo' with: [
			spec
"				requires: #('Via');"
				repository: 'http://monticello.mindclue.dyndns.org:8753/321via'.
"Später:				repository: 'github://talk-small-be-open/via'."
		].
		spec
			group: 'Core' with: #('MockGemStone' ).
	].
