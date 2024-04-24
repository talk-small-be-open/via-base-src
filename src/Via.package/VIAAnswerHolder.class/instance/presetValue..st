as yet unclassified
presetValue: anObject
	"Setzt einen Wert als Default-Antwort. Macht Sinn bei Aufgaben, bei denen
	der Schüler etwas vorgegebenes korrigieren soll, oder falls ein spezielles
	Werteobjekt zum Einsatz kommt"
	value := anObject.
	
	self snapshotLastCheckedValue