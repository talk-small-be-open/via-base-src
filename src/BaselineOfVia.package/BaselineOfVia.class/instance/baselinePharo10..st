baselines
baselinePharo10: spec
	spec for: #'pharo10.x' do: [
		spec baseline: 'OSSubprocess' with: [
			"Last compatible with Pharo 10"
			spec repository: 'github://pharo-contributions/OSSubprocess:v1.4.2/repository'].
	]