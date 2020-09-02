accessing
pillar: aString
	pillar := aString.

	[
	pillarDocument := VIAHelper pillarFromPillarString: aString.
	parseError := nil.
	] on: VIAPillarSyntaxError do: [ :error | parseError := error syntaxError ]