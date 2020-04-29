as yet unclassified
removeUntouchedModules
	self untouchedModuleExercises do: [:each |
		self removeModule: each module]