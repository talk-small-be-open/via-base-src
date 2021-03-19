rendering
renderAjaxInterval: aMsInteger on: html callback: aCallbackBlock html: aBlock
	"Interval forever"
	self renderAjaxInterval: aMsInteger on: html while: [ true ] callback: aCallbackBlock html: aBlock