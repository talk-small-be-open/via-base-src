as yet unclassified
inlineHtml: aRenderBlock
	| builder canvas |
	
	canvas := self am rendererClass.
		
	builder := canvas builder
		codec: (GRCodec forEncoding: 'utf-8');
		fullDocument: false;
		yourself.

	^ builder render: aRenderBlock