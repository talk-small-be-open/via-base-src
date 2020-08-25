as yet unclassified
receiveFile: aFile
	(self isAllowedMimeType: aFile)
		ifTrue: [
			| uniqueFilename uploadAbsoluteDir uploadRelativeDir uuidString |
			uuidString := UUID new greaseString.
			uploadRelativeDir := self targetRelativePath.
			uniqueFilename := uuidString, '.', (VIAPlatform current extensionOfFile: aFile fileName).

			uploadAbsoluteDir := self targetBasePath, '/', uploadRelativeDir. 
			GRPlatform current ensureExistenceOfFolder: uploadAbsoluteDir.

			MCLPlatform file: (uploadAbsoluteDir, '/', uniqueFilename) binaryWriteStreamDo: [:stream |
				stream nextPutAll: aFile rawContents].

			self tempFileReference
				fileBasePath: self targetBasePath;
				fileRelativePath: uploadRelativeDir;
				fileName: uniqueFilename;
				contentType: aFile contentType;
				byteSize: aFile size;
				title: aFile fileName.

			self flashMessage: 'Datei hochgeladen!']
		ifFalse: [self errorMessage: 'Datei hat falsches Format!']