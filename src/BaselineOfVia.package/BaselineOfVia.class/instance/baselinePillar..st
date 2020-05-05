as yet unclassified
baselinePillar: spec

	spec for: #'common' do: [

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
					requires: #('Seaside3'). "Actually only Grease, but easier here"
			];
			package: 'Pillar-ExporterCore' with: [
				spec
					requires: #('Pillar-Model' 'Mustache').
			];
			package: 'Pillar-ExporterHTML' with: [
				spec
					requires: #('Pillar-ExporterCore').
			];
			package: 'Pillar-ExporterPillar' with: [
				spec
					requires: #('Pillar-ExporterCore').
			].

		spec
			group: 'Pillar' with: #('Pillar-ExporterHTML' 'Pillar-ExporterPillar').

	]