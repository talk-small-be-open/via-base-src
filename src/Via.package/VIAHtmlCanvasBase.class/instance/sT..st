via
sT: aKey
	"= simple translate, no pillar. Faster"
	self text: (self session getUiText: aKey) text	
"	self sT: aKey l: (self session language)"