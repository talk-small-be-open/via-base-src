actions
removeTaskBrick: aTaskBrick from: aParent
	"Delegate"
	(self confirmYesNo: 'admin:reallyDeleteQM') ifTrue: [
		aParent removeChild: aTaskBrick]