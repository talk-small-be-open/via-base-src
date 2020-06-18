fontawesome
fasIcon: aString
	"Solid style"
	
	^(self tag: 'i')
		class: 'icon fas';
		class: ('fa-', aString);
		yourself