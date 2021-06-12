initialization
initialize 
	| req |

	super initialize.
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model].
	
	req := VIAGatherFeatureRequestsVisitor start: model.
	self addDocumentFeatures: req features.