visiting-document
visitHeader: aHeader
	| level |
	level := self configuration headingLevelOffset + aHeader level.
	level timesRepeat: [ canvas raw: aHeader class markup ].
	super visitHeader: aHeader.
	canvas newLine