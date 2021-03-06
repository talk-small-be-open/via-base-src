as yet unclassified
renderMapOn: html
	| mapaelOptions plots fontAttrs |

	plots := self clusteredGeocodes collect: [:each |
		| o |
		o := Dictionary new.
		o at: 'latitude' put: each latitude.
		o at: 'longitude' put: each longitude.
		o at: 'size' put: (self sizeOfPlot: each).
		
		(self tooltipContentFor: each) ifNotBlank: [:content |
			o at: 'tooltip' put: {
				'content'->content.
				('overflow'->{'right'->true. 'bottom'->false}aD).
				('offset'->{'left'->10. 'top'->(-75)}aD)
			}aD
		].

		(self urlFor: each canvas: html) ifNotBlank: [:url |
			o at: 'href' put: url].

		(self cssClassFor: each) ifNotBlank: [:css |
			o at: 'cssClass' put: css].
		
		o
	].

	fontAttrs := Dictionary new.
	fontAttrs at: 'font-size' put: 20.
	
	mapaelOptions := Dictionary new.
	mapaelOptions
		at: 'map' put: ({
			'name'->self mapaelMapName.
			'zoom'->{'enabled'->false}aD.
"			'defaultArea'->{'attrsHover'->{'animDuration'->0} asDictionary} asDictionary."
		}aD);
		at: 'plots' put: plots.

	showAreaTooltips ifTrue: [
		mapaelOptions at: 'areas' put: self mapaelAreas ].

	html div
		class: 'mapContainer';
		class: self mapCss;
		script: (html jQuery this call: 'mapael' with: mapaelOptions);
		with: [
			html div class: 'map'; with: 'Here should be a map ...' ].