rendering
renderLocalLoginOn: html

	html div class: 'uk-clearfix'; with: [
		html heading
			class: 'uk-float-left';
			level4;
			with: [
				html t: 'login:localLogin'.
			].
		html div class: 'uk-float-right'; with: [
			html anchor
				callback: [self downloadLocalLoginHelpPdf];
				with: [
					html iconHelp; space.
					html t: 'login:downloadLocalLoginHelp']]].

	html form id: 'loginForm'; class: 'uk-form uk-form-stacked'; with: [

		loginOk = false ifTrue: [
			html ukLabelDanger t: 'login:loginError'.
			html break.
		].

		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'login:email'.
			html div class: 'uk-form-controls'; with: [
				html ukTextInput
					id: 'loginEmail';
"					script: (html jQuery this triggerFocus);"
					on: #email of: self]].
		html div class: 'uk-margin-small'; with: [
			html label class: 'uk-form-label'; t: 'login:password'.
			html div class: 'uk-form-controls'; with: [
				html ukPasswordInput
					id: 'loginPassword';
					callback: [:value | self localLoginWithPassword: value]]].
		html div class: 'uk-margin'; with: [
			html ukSubmitButton t: 'login:loginNow'].
	].