initialization
setup
	| block blockName |

	[
		testdriveId := (self requestContext request at: 'id') asInteger.
		blockName := (#testdriveInitBlock, testdriveId greaseString) asSymbol.
		block := self db propertyAt: blockName.
		block value: applicationComponent
	] ifError: [ self show: (VIAInformationComponent message: 'admin:testdriveError')]