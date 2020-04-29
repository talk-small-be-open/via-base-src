rendering
renderButtonsOn: html
	buttons ifNotEmpty: [
		html div class: 'dialogButtons'; with: [
			self buttons do: [ :each |
				| actionName labelKey |
				actionName := each key.
				labelKey := each value.
				html span
					with: [
						self renderButton: labelKey forSelector: actionName on: html.
						html space.]].
			isDirtyChecked ifTrue: [
				self decoratedComponent renderDirtyFlagOn: html]]]