updating
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.	

	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-plusastab/src/plusastab.joelpurra.js'.
	anHtmlRoot javascript defer; url: '/lib/bower_components/jquery-emulatetab/src/emulatetab.joelpurra.js'.
	
		
	"Mediaelement CDN"
	self ifNeedsAny: {'audio'. 'video'} then: [
		anHtmlRoot javascript defer url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelement-and-player.min.js'.
		anHtmlRoot stylesheet url: 'https://cdnjs.cloudflare.com/ajax/libs/mediaelement/4.2.16/mediaelementplayer.min.css'.
	].

	"Youtube embedding"
	self ifNeeds: 'youtube' then: [
		anHtmlRoot javascript url: '/js/youtube.js'. "DONT defer, must be early ready"
		anHtmlRoot javascript defer; url: 'https://www.youtube.com/iframe_api'.
	].

	"Vimeo embedding"
	self ifNeeds: 'vimeo' then: [
		anHtmlRoot javascript defer url: 'https://player.vimeo.com/api/player.js'.
	].

	"SRG Player embedding"
	self ifNeeds: 'srgplayer' then: [
		anHtmlRoot javascript defer url: 'https://tp.srgssr.ch/assets/javascripts/player-api.min.js'.
	].


	"Prevent auto content inside exercises"
	anHtmlRoot meta name: 'format-detection'; content: 'telephone=no'.
	anHtmlRoot meta name: 'format-detection'; content: 'date=no'.	
	anHtmlRoot meta name: 'format-detection'; content: 'address=no'.
	anHtmlRoot meta name: 'format-detection'; content: 'email=no'.