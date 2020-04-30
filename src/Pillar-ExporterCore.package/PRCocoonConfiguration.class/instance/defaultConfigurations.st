accessing defaults
defaultConfigurations
	<cocoonDefaultParameter: 'A dictionary of default configurations from the exporters.'>
	^ PRDocumentWriter allDefaultConfigurations
		valuesDo: [ :configuration | configuration parent: self ];
		yourself