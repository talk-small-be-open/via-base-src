as yet unclassified
registerModuleExercise: aModuleExercise
	"Meldet eine Prüfung an, und speichert bereits das Objekt"
	
	"OPTIMIZE: Evt. verhindern, dass doppelt registriert?"
	
	"Arbeitsobjekt als Sicherheitskopie speichern"
	moduleExercisesInProgress add: aModuleExercise.
