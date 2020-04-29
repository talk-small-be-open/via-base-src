as yet unclassified
visitVideoPlayer: aVideoPlayer
	| asset |
	asset := aVideoPlayer videoAsset ifNil: [^self].

	asset deleteTransformedMediaFiles.

	asset buildPosterImage.

	aVideoPlayer isFragment ifTrue: [
		asset buildFragmentStart: aVideoPlayer startSeconds stop: aVideoPlayer endSeconds.
	].

	"TODO: Rescale with given width?"