baseline
baseline: spec
	<baseline>
	spec for: #'common' do: [
		spec 
			baseline: 'Seaside3' with: [
				spec
					repository: 'github://SeasideSt/Seaside:v3.4.x/repository'; "v3.3.4"
					loads: #('mustbedefined') "Template: 'Base' 'Core' 'JSON' 'Email' 'Javascript' 'JQuery'"
			].

			spec baseline: 'NeoJSON'.
			spec group: 'CSV' with: #().

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
			spec requires: #('Pillar' 'Seaside3' 'MCLPlatformPortability' 'MCL-Utils-Blankness' 'MCL-Utils-CollectionSugar' 'NeoJSON' 'CSV' ). 
 		].
		spec package: 'Via-Hep' with: [
			spec requires: #('Via'). 
 		].
		spec package: 'Via-Tests'.

		spec 
			group: 'default' with: #('Core');
			group: 'Core' with: #('Via');
			group: 'hep' with: #('Via-Hep');
			group: 'Tests' with: #('Via-Tests').
		].

	self baselinePillar: spec.

	self baselinePharo: spec.
"	self baselinePharoPillarVersion056: spec."
	
	self baselineGemStone: spec.