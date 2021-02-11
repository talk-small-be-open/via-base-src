via
pillar: aPillarDocument onMarker: aBlock
	"aBlock params: :marker :html"
	self pillarSeasideRenderer markerRenderingBlock: aBlock.
	self pillarSeasideRenderer start: aPillarDocument