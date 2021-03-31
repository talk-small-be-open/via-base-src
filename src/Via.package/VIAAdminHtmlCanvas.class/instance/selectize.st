as yet unclassified
selectize
	^ self select
		class: 'selectize';
		optionalLabel: '(empty)'; "Needed non-blank for selectize working properly (?)"
		yourself