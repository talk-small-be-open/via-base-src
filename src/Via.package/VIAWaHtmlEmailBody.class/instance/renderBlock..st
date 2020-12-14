initialization
renderBlock: anHtmlRenderingBlock
	self
		contentString:
			(VIAHtmlCanvas builder
				codec: (GRCodec forEncoding: 'utf-8');
				fullDocument: true;
				rootBlock: [ :root |
					root style: self cssStyles.
				];
				render: anHtmlRenderingBlock)
