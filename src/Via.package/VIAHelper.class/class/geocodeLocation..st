as yet unclassified
geocodeLocation: aString 
	| response emptyResult |
	
	"API swisstopo siehe http://api.geo.admin.ch/services/sdiservices.html"
	"Forum: https://groups.google.com/forum/#!forum/geoadmin-api"
	
	emptyResult := {}.
	
	aString ifBlank: [ ^emptyResult ].
	
	"Would need to setup certificates in GemStone, but we dont want that"
	"GsSecureSocket disableCertificateVerificationOnClient."

	
	response := ZnClient new
		beOneShot;
		url: 'http://api.geo.admin.ch/rest/services/api/SearchServer';
		queryAt: 'searchText' put: aString;
		queryAt: 'origins' put: 'zipcode,kantone,gg25,district,gazetteer';
		queryAt: 'type' put: 'locations';
"		queryAt: 'lang' put: 'it';"
		get;
		response.
	
"defekt	response writeToTranscript."

	response isSuccess ifTrue: [
		| responseData |

		responseData := VIAHelper fromJson: response contents.

		^(responseData at: 'results') collect: [:each |
			| geo sanitizedLabel |
			geo := each at: 'attrs'.
			sanitizedLabel := (geo at: 'label').
			#('<b>' '</b>' '<i>' '</i>') do: [:eachSubstring |
				sanitizedLabel := sanitizedLabel copyReplaceAll: eachSubstring with: ''].
			
			VIAGeocode new
				latitude: (geo at: 'lat');
				longitude: (geo at: 'lon');
				label: sanitizedLabel;
				typeInfo: (geo at: 'origin');
				searchString: aString;
				yourself
			]
	].
	
	^emptyResult