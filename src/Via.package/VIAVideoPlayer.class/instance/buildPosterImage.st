as yet unclassified
buildPosterImage
	videoAsset ifNil: [^ self].
	videoAsset buildPosterImageAt: self posterImageTimeMs