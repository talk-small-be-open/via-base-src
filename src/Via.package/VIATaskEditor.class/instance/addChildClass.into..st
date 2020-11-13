adding
addChildClass: aClass into: aCompositeTask
	| child visitor |
	child := aClass new.
	
	visitor := VIAPrepareNewBrickVisitor website: self currentWebsite.
	visitor visit: child.

	aCompositeTask addChild: child.
	
	^ child