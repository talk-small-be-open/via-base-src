generators
generateStaticManifestJson
	| j path |
	
	path := (self db propertyAt: #webRootPath), '/site/'.

	self db websitesDo: [ :each |
		| manifestId |
		manifestId := each code.
		
		j:= each generateWebmanifestId: manifestId startTag: nil.

		GRPlatform current write: j asJson toFile: each webmanifestFilename inFolder: path ]