as yet unclassified
renderContentOn: html

	self isEmbedded ifFalse: [
		html heading level2; t: 'disclaimer:dialogTitle'].

	html div
		a: 'uk-accordion'; "p: '{collapse: false}'"
		with: [
			languages do: [:eachLanguage |
				html div: [
					html heading level3; class: 'uk-accordion-title'; with: [html t: 'main:disclaimer:title' l: eachLanguage].
					html div class: 'uk-accordion-content'; with: [
						html t: 'main:disclaimer:text' l: eachLanguage]]]].
		
	self isEmbedded ifFalse: [
		html ukAnchorButton
			callback: [self close];
			t: 'general:close']