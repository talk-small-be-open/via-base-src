as yet unclassified
processUploadedFile: aFilenameString
	| uniqueFilename uploadAbsoluteDir uploadRelativeDir uuidString targetBasePath title |

	uuidString := UUID new greaseString.
	targetBasePath := (self db propertyAt: #webRootPath).
	uploadRelativeDir := self website assetsRelativePath.
	uniqueFilename := uuidString, '.webm'.

	uploadAbsoluteDir := targetBasePath, '/', uploadRelativeDir.
	GRPlatform current ensureExistenceOfFolder: uploadAbsoluteDir.

	"Bereits bestehendes File hierhin verschieben"
	VIAPlatform current moveFileNamed: (self tempUploadFolder, aFilenameString) to: (uploadAbsoluteDir, '/', uniqueFilename).

	title := 'Adhoc recording of ', self currentUser fullName, ' at ', (VIAHelper germanDateAndTimeStringFor: DateAndTime now).

	fileReference := VIALocalFileReference new
		fileBasePath: targetBasePath;
		fileRelativePath: uploadRelativeDir;
		fileName: uniqueFilename;
		title: title;
		yourself.

	VIAHelper processSelfRecordedSpeech: fileReference optimize: optimizeAudio.
	
	fileReference readContentType