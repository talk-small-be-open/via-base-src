as yet unclassified
processUploadedFile: aFilepathString named: aNameString
	| uniqueFilename uploadAbsoluteDir uploadRelativeDir uuidString fileReference |
	uuidString := UUID new greaseString.
	uploadRelativeDir := self targetRelativePath.
	uniqueFilename := uuidString, '.', (VIAPlatform current extensionOfFile: aNameString).

	uploadAbsoluteDir := self targetBasePath, '/', uploadRelativeDir.
	GRPlatform current ensureExistenceOfFolder: uploadAbsoluteDir.

	"Bereits bestehendes File hierhin verschieben"
	VIAPlatform current moveFileNamed: (self tempUploadFolder, aFilepathString) to: (uploadAbsoluteDir, '/', uniqueFilename).

	fileReference := VIALocalFileReference new
		fileBasePath: self targetBasePath;
		fileRelativePath: uploadRelativeDir;
		fileName: uniqueFilename;
		title: aNameString;
		yourself.

	tempFileReferences add: fileReference.