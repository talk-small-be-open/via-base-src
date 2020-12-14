accessing
setHtmlBody: aBlock
	"block should be in the form of a [:h | h render: 'hello world']"

	self addPart: (VIAWaHtmlEmailBody renderingBlock: aBlock)