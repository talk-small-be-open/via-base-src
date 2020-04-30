accessing
defaultConfigurations
	^ Dictionary new
		at: self defaultConfigurationName
			put:
				(PRCocoonConfiguration new
						outputType: self;
						templateStream: self defaultTemplate;
						configurations: Dictionary new; "we specify an empty collection of sub configurations to avoid infinite recursion : a default configuration would otherwise contain a collection of default configurations, each containing a collection of default configurations..."
						yourself);
		yourself