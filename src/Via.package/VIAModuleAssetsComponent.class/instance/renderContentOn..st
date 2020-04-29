as yet unclassified
renderContentOn: html
	html heading level2; class: 'moduleTitle'; with: [
		html span
			class: 'level-badge';
			class: ('level-', model exerciseLevel asLowercase);
			with: model exerciseLevel.
		html space.

		html text: model displayName].

	html paragraph t: 'moduleAssets:info'.
	
	html div: [
		html anchor
			callback: [self downloadAssetsZipPackage];
			with: [
				html iconZip; space.
				html t: 'moduleAssets:downloadAssetsZipPackage']].

	self renderOverviewOn: html