*Via
ukToggleTarget: aString animation: anAnimationString
	"Hint: If animation then no 'cls' can be given."
	self ukToggle: ('target: ', aString, '; animation: ', anAnimationString)