as yet unclassified
toggleAdminEditUiTextsMode
	"TBD"
	adminTool := adminTool
		ifNil: [ VIAFrontendAdminUiTextsComponent new. ]
		ifNotNil: [ nil ]