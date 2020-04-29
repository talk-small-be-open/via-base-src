actions
rebuildVideoThumbnails
	self wd videoAssets do: [:each |
		each buildPosterImage]