initialization
initialize 
	| req |

	super initialize.
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model].
	
	req := VIAGatherFeatureRequestsVisitor start: model.

	needsVimeo := req needsFeature: 'vimeo'.
	needsYoutube := req needsFeature: 'youtube'.
	needsMediaelementJs := req needsAnyFeature: {'audio'. 'video'}.
	needsSrgPlayer := req needsFeature: 'srgplayer'.
	