as yet unclassified
taskExercises
	"We conveniently sort it according to the current order
	of tasks in the module"
	^ taskExercises values sortedBy: [ :each | module tasks indexOf: each task ]