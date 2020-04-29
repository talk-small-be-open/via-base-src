actions
removeTaskBrick: aTaskBrick from: aParent
	"Delegate"
	(self confirmYesNo: 'Really delete element?') ifTrue: [
		aParent removeChild: aTaskBrick]