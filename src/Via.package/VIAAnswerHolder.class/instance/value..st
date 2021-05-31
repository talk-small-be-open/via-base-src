accessing
value: anObject

	"Leere Mengen setzen wir zurück"
	(anObject isCollection and: [anObject isEmpty]) ifTrue: [self beEmpty. ^self].
	(anObject ~= value) ifTrue: [self beUnchecked].
	
	value := anObject