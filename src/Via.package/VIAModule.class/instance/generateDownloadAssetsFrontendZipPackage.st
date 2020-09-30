as yet unclassified
generateDownloadAssetsFrontendZipPackage
	| tempFile shellCommandString visitor |
	tempFile := VIATempFile zipForXSendfile.

	shellCommandString := String streamContents: [:s |
		s << 'cd '.
		s << tempFile directory.
		s space.
		s << ' && '.
		s << 'zip -9 --junk-paths '.
		s << (tempFile filePath).
		s space.


		self tasks withIndexDo: [:eachTask :eachIndex |

			visitor := VIAGatherAssetFilesForFrontendZipPackageVisitor new.
			visitor titlePrefix: ('Task ', eachIndex greaseString).
			
			eachTask acceptVisitor: visitor.

			visitor files do: [:eachFileReference |
				
				"symlink mit natürlichem Namen erstellen"
				MCLPlatform runShellCommand: 'ln -s "', eachFileReference filePath, '" "', (tempFile directory, '/', eachFileReference title), '"'.
				
				s << '"'.
				s << eachFileReference title.
				s << '"'.
				s space.
			]
		].
	].
	
	MCLPlatform runShellCommand: shellCommandString.
	
	^tempFile