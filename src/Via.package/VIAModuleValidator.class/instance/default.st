as yet unclassified
default
	self validatePresence of: #title named: 'module:title'.
	self validatePresence of: #authorUsers named: 'module:authors'.
"	self validatePresence of: #coAuthorUsers named: 'module:coauthors'."
	self validatePresence of: #imageAsset named: 'module:mainImage'.

	self validatePresence of: #levelTag named: 'module:level'
