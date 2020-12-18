actions
rebuildVideoThumbnails
	"obsolete?"
	self wd videoAssets do: [:each |
		each buildPosterImage]