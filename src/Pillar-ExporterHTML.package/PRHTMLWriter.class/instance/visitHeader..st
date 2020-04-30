visiting-document
visitHeader: aHeader
	| level |
	level := self configuration headingLevelOffset + aHeader level.	"h1 to h7 exist."
	level := level min: 7 max: 1.
	canvas tag
		name: 'h' , level asString;
		with: [ 
					self writeCounterForHeader: aHeader.
					super visitHeader: aHeader ]