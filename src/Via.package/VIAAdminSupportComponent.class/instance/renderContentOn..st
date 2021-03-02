rendering
renderContentOn: html
	html heading: 'Support console'.
	html strong: 'Goto: '; break.
	html anchorButton callback: [ self findTeacher ]; with: 'Teacher'