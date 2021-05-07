rendering
renderContentOn: html
	html heading: 'Support console'.
	html strong: 'Start with: '; break.
	html anchorButton callback: [ self findUser ]; with: 'User'.