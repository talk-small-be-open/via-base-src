uikit
ukFormSelect: aBlock
	self div
		a: 'uk-form-custom' p: 'target: > * > span.buttonLabel';
		class: 'uk-width-expand';
		with: [
			aBlock value: self select.
			self ukButton
				class: 'uk-width-expand';
				with: [
					self span class: 'buttonLabel'.
					self iconDropdown ] ]