fontawesome
farIcon: aString
	"Regular style"
	
	^(self tag: 'i')
		class: 'icon far';
		class: ('fa-', aString);
		yourself