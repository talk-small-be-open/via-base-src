as yet unclassified
filterCollectionA: aCollectionA withB: aCollectionB

	"Nützlich beim schrittweise filtern und verkleinern einer Resultatemenge, geschnitten
	mit einer weiteren Resultatemenge. nil gilt als 'keine Menge' != 'leere Menge' "
	
	"Falls eine Menge nil ist, heisst das, dass diese noch nicht zur Resultatfindung gilt"
	aCollectionA ifNil: [ ^ aCollectionB ifNil: [ IdentitySet new ] ].
	aCollectionB ifNil: [ ^ aCollectionA ].
	
	"Falls leer dann trivial"
	aCollectionA ifEmpty: [ ^ aCollectionA ].
	aCollectionB ifEmpty: [ ^ aCollectionB ].

	"Falls beide nicht-leer, dann gilt Schnittmenge"
	^ aCollectionA intersection: aCollectionB