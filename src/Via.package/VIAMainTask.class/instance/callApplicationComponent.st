as yet unclassified
callApplicationComponent
	"IMPORTANT! GemStone 3.4.12 showed a strange behaviour,
	where it would not work with a simple call:, we need to use the call:onAnswer: method.
	Somehow the login process was ending the task with answering the main component,
	but then the whole application was stuck and I got very strange, barely-debuggable
	WARequestContextNotFound errors"
	
	"Hook to setup application"
	(applicationComponent respondsTo: #beforeFirstCall) ifTrue: [
		applicationComponent beforeFirstCall ].
	
	self call: applicationComponent onAnswer: [ self restart ]