as yet unclassified
checkExternalResourceAvailable
	| response |

	"We do it quick and dirty. We use the oEmbed-API, to get tiny infos about the Video-URL.
	This will also tell us, if it is not available.
	There is probably a real API for that, but with the hassle of API-keys"

	response := ZnClient new
		beOneShot;
		url: 'https://www.youtube.com/oembed';
		queryAt: 'url' put: ('https://www.youtube.com/watch?v=', videoId);
		queryAt: 'format' put: 'json';
		get;
		response.
	
	^ response isSuccess
	
	" ifTrue: [
		| responseData |

		responseData := VIAHelper fromJson: response contents.

		^(responseData at: 'results') ...
	].
"