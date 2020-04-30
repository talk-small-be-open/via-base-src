baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Seaside3' with: [
				spec
					repository: 'github://SeasideSt/Seaside:v3.3.4/repository';
					loads: #('default' 'JSON' 'Email' 'Javascript' 'JQuery') ].

"in Pharo/GS getrennt			project: 'Pillar'."

			spec baseline: 'NeoJSON'.
"			spec baseline: 'OSSubprocess' with: [
				spec repository: 'github://pharo-contributions/OSSubprocess:master/repository']."
"			baseline: 'Pillar' with: [
				spec
					repository: 'github://JupiterSmalltalk/Pillar/repository';
					loads: #('All but tests') ]."
"KEIN neues Pillar wegen GemStone			baseline: 'Pillar' with: [
				spec
					repository: 'github://pillar-markup/pillar:v8.0.2/src';
					loads: #('All but tests') ]."
		spec package: 'MCLPlatformPortability' with: [ 
			spec repository: 'github://talk-small-be-open/utils:master/src'
		 ].
		spec package: 'MCL-Utils-Blankness' with: [
			spec repository: 'github://talk-small-be-open/utils:master/src'
		].
		spec package: 'MCL-Utils-CollectionSugar' with: [
			spec repository: 'github://talk-small-be-open/utils:master/src'
		].
		spec package: 'Via' with: [
				spec 
					requires: #('Pillar' 'Seaside3' 'MCLPlatformPortability' 'MCL-Utils-Blankness' 'MCL-Utils-CollectionSugar' 'NeoJSON' ); "'OSSubprocess'"
					repository: 'github://talk-small-be-open/via:master/src'. ].
		spec 
			group: 'default' with: #('Core' );
			group: 'Core' with: #('Via' ). ].

	self baselinePharo: spec.
	self baselineGemStone: spec.