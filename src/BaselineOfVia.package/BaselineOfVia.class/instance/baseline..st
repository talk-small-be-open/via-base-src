baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Seaside3' with: [
				spec
					repository: 'github://SeasideSt/Seaside:v3.2.5/repository'; "v3.3.4"
					loads: #('mustbedefined') "Template: 'Base' 'Core' 'JSON' 'Email' 'Javascript' 'JQuery'"
			].

			spec baseline: 'NeoJSON'.
"			spec baseline: 'OSSubprocess' with: [
				spec repository: 'github://pharo-contributions/OSSubprocess:master/repository']."
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

	self baselinePillar: spec.

	self baselinePharo: spec.
"	self baselinePharoPillarVersion056: spec."
	
	self baselineGemStone: spec.