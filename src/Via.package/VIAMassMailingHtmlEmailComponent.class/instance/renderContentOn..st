rendering
renderContentOn: html

	html div: [ html logoImageFor: website ].

	html pillar: mainPillar.
		
	"Unsubscribe link"
	html div class: 'unsubscribeInfos'; with: [
		html anchor
			url: self unsubscribeUrl;
			with: 'Click here for unsubscribe and email settings ...'
	]