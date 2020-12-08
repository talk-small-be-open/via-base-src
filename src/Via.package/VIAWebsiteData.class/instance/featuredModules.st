accessing
featuredModules
	^ self propertyAt: #featuredModules ifAbsent: [ self publicModules shuffled takeFirst: 10 ]