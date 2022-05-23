actions
showMediaFiles: anAsset
	| files |
	files := (VIAPlatform current getFilesIn: anAsset fileReference directory) sorted.
	files ifEmpty: [ self inform: 'None' ] ifNotEmpty: [
		self inform: (MCLPlatform joinCollection: files delimiter: String lf)]