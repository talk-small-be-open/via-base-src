as yet unclassified
generateDownloadAssetsZipPackage
	| tempFile shellCommandString |
	tempFile := VIATempFile zipForXSendfile.

	shellCommandString := String streamContents: [:s |
		s << 'cd '.
		s << tempFile directory.
		s space.
		s << ' && '.
		s << 'zip -9 --junk-paths '.
		s << (tempFile filePath).
		s space.


		self assets sortedBySortKey withIndexDo: [:eachAsset :eachIndex |
			| fr |
			fr := eachAsset fileReference.

			"symlink mit natürlichem Namen erstellen"
			MCLPlatform runShellCommand: 'ln -s "', fr filePath, '" "', (tempFile directory, '/', fr fileName), '"'.
			
			s << '"'.
			s << fr fileName.
			s << '"'.
			s space.
		]
	].
	
	MCLPlatform runShellCommand: shellCommandString.
	
	^tempFile