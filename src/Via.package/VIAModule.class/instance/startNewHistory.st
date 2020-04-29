as yet unclassified
startNewHistory
	"Für alle Fälle"
	moduleHistory removeVersion: self.
	
	moduleHistory := VIAModuleHistory new.
	moduleHistory addVersion: self.