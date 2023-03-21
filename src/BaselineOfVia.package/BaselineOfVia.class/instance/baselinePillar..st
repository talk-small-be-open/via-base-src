as yet unclassified
baselinePillar: spec

	spec for: #'common' do: [
		spec
			package: 'Pillar-Model' with: [
				"spec
					requires: #('Seaside3')." "Actually only Grease, but easier here"
			];
			package: 'Pillar-ExporterCore' with: [
				spec
					requires: #('Pillar-Model').
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

	].

	spec for: #'pharo' do: [
		spec package: 'Pillar-Pharo' with: [
			spec
				requires: #('Pillar-ExporterCore') ].
		spec
			group: 'Pillar' with: #('Pillar-Pharo').
	]