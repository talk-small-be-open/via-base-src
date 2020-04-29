as yet unclassified
buildComponents
	taskComponents := model module tasks collect: [:each |
		VIAExamTaskAnalyzerComponent parent: self task: each]