rules creation
validateHomepageUrl
	self validationGroup: [
		self validatePresence of: #homepageUrl; named: #org:homepage.
		(self validateTrue: [self db isWebsiteOnlineCached: self object homepageUrl])
			errorMessage: #org:validation:homepageIsNotOnline]