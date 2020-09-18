actions
close: aHtmlRoot on: aDocument
	self loadScripts isEmpty
		ifTrue: [ ^ self ].

	"Defer the JQuery based script after the DOMContentLoaded event, since jQuery itself is defer loaded"
	self 
		writeScriptTag: [ 
			aDocument nextPutAll: 'window.addEventListener("DOMContentLoaded", function() {'.			
			aDocument nextPutAll: JQuery functionName; nextPutAll: '(function(){'.
			self writeLoadScriptsOn: aDocument.
			aDocument nextPutAll: '}) });' ]
		on: aDocument