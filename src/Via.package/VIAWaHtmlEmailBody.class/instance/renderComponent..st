initialization
renderComponent: aComponent
	self
		contentString:
			(VIAHtmlCanvas builder
				codec: (GRCodec forEncoding: 'utf-8');
				fullDocument: true;
				rootBlock: [ :root |
					root style: self cssStyles.
					aComponent updateRoot: root.
				];
				render: aComponent)
