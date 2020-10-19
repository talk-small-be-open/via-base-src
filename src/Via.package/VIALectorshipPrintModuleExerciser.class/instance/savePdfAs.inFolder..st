actions
savePdfAs: aFilename inFolder: aFolderString
	| generator |

	generator := VIAPdfGenerator component: self.

	generator
		targetName: aFilename;
		targetFolder: aFolderString;
		generate.