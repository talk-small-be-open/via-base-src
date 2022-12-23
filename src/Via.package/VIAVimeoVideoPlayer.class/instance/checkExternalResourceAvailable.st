as yet unclassified
checkExternalResourceAvailable
	| response |

	"We do it quick and dirty. We use the oEmbed-API, to get tiny infos about the Video-URL.
	This will also tell us, if it is not available.
	There is probably a real API for that, but with the hassle of API-keys"

	response := ZnClient new
		beOneShot;
		url: 'https://vimeo.com/api/oembed.json';
		queryAt: 'url' put: ('https://vimeo.com/', videoId);
		get;
		response.
	
	^ response isSuccess
	
	" ifTrue: [
		| responseData |

		responseData := VIAHelper fromJson: response contents.

		^(responseData at: 'results') ...
	].
"