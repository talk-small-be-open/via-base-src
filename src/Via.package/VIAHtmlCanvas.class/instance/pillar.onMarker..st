via
pillar: aPillarDocument onMarker: aBlock
	"aBlock params: :marker :html"
	pillarSeasideRenderer markerRenderingBlock: aBlock.
	pillarSeasideRenderer start: aPillarDocument