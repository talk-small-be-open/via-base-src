as yet unclassified
cleanupAndRebuildArtefacts
	| pdfGenerator |

	(self confirmYesNo: 'Really do this? Takes long.') ifFalse: [ ^ self ].
	
	"Caution! Could take long time!!!"
	
	"Delete all thumbnails, scaled versions, etc."
	self wd assets do: [ :each | each deleteTransformedMediaFiles ].

"	testdriver := self am mainTestdriveComponentClass new."
"	pdfGenerator := VIAPdfGenerator new.
	pdfGenerator componentCreator: [self am mainTestdriveComponentClass new]."

	"Pseudo render each module, so the assets will be requested"	
	self wd modules do: [ :each |
"		testdriver testdriveModule: each."
		"THIS will render the component to a string, and requests all used assets"
		pdfGenerator := VIAPdfGenerator
			componentCreator: [self am mainTestdriveComponentClass new testdriveModule: each; yourself]
			website: self website.
		pdfGenerator xhtmlString.
	]