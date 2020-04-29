as yet unclassified
xhtmlString
	| xhtmlString fakeRequestContext fakeSession |
	
	fakeRequestContext := WARequestContext request: WARequest new response: WABufferedResponse new codec: (GRCodec forEncoding: 'utf8').

	fakeSession := VIAPrintSession forWebsite: self website.
"Dont like this strategy. Better keeping the print session pristine, and add the data to the component in print.
fakeSession user: component currentUser."

	fakeRequestContext
		push: fakeSession
		during: [
			| builder |

			builder := VIAPrintHtmlCanvas builder
				codec: (GRCodec forEncoding: 'utf-8');
				fullDocument: true;
				rootBlock: [ :root |
					self updateRoot: root];
				yourself.

			xhtmlString := builder render: [:html |
				html render: component]

		].

	^xhtmlString