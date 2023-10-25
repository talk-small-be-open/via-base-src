accessing
contents
	^ (GRCodec forEncoding: 'utf-8') decode: (GRPlatform current contentsOfFile: self filePath binary: true).