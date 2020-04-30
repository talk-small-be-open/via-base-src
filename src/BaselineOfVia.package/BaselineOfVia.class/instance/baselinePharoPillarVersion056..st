as yet unclassified
baselinePharoPillarVersion056: spec
"Copied from old	<version: '0.56' imports: #('0.22-baseline' )>"

	spec for: #'pharo' do: [

		spec
			project: 'Mustache'
			with: [ 
				spec
					className: 'ConfigurationOfMustache';
					versionString: '0.71';
					loads: #('Core');
					repository: 'http://www.smalltalkhub.com/mc/NorbertHartl/Mustache/main' ].

"			project: 'Grease' with: '1.1.13';"
"			project: 'Mustache' with: '0.71'."
"			project: 'Cocoon' with: '1.16'."

		spec repository: 'github://talk-small-be-open/via:master/src'.

		spec
			package: 'Pillar-Model' with: [
				spec
					requires: #('Grease');
					file: 'Pillar-Model-CyrilFerlicot.163'.
			];
			package: 'Pillar-ExporterCore' with: [
				spec
					requires: #('Pillar-Model' 'Mustache');
					file: 'Pillar-ExporterCore-CyrilFerlicot.149'.
			];
			package: 'Pillar-ExporterHTML' with: [
				spec
					requires: #('Pillar-ExporterCore');
					file: 'Pillar-ExporterHTML-CyrilFerlicot.61'
			];
			package: 'Pillar-ExporterPillar' with: [
				spec
					requires: #('Pillar-ExporterCore');
					file: 'Pillar-ExporterPillar-CyrilFerlicot.22'
			].

		spec
			group: 'Pillar' with: #('Pillar-ExporterHTML' 'Pillar-ExporterPillar').

	]