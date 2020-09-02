as yet unclassified
lightbox: aTitleText component: aComponent
	"Display aComponent within a lightbox of the receiver. Note, that this does a full refresh displaying the lightbox. Also note, that this only works well, if you sent to the root component of your application."
	
	"call/answer variant of showLightbox..."
	"OPTIMIZE: Maybe unify with showLightbox... ?"
	
	^ self wait: [ :cc | 
		self 
			show: aComponent
			onAnswer: cc
			delegation: (VIALightbox new
				delegate: aComponent;
				title: aTitleText;
				showCloseButton: false;
				yourself).
		WARenderNotification signal ]