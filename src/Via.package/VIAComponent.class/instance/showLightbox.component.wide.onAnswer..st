as yet unclassified
showLightbox: aTitleText component: aComponent wide: aBoolean onAnswer: aBlock
	| lightbox |
	"Display aComponent within a lightbox of the receiver. Note, that this does a full refresh displaying the lightbox. Also note, that this only works well, if you sent to the root component of your application."
	
	"Question: Why double-delegated with lightbox? Seaside question."
	
	lightbox := (VIALightbox new
		delegate: aComponent;
		title: aTitleText;
		showCloseButton: false;
		yourself).
		
	aBoolean ifTrue: [lightbox beWide].
	
	^self 
		show: aComponent
		onAnswer: (aBlock ifNil: [ [:answer | ] ])
		delegation: lightbox.