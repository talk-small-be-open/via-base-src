as yet unclassified
generatePwaImages
	self generateFavicons.

	"Apple"
	self generateAppleTouchIcons.
	self generateAppleStartupScreens.
	
	"Android, uses Apple images so far, in the manifest"
"	self generateAndroid..."
	
	"MS"
	self generateMsImages.