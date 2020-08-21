as yet unclassified
renderGeoInformationOn: html
	| exists |
	exists := model geocodes notEmpty.
	
	html div: [
		html label: 'Geo information'.
		model geocodes
			ifEmpty: [html span: 'None']
			ifNotEmpty: [:geocodes |
				geocodes do: [:gc |
					html div: [
						gc isFromOnlineSearch ifTrue: [
							html span: 'Latitude: '.
							html span: gc latitude.
							html text: ', '.

							html span: 'Longitude: '.
							html span: gc longitude.
							html text: ', '.

							html span: 'Label: '.
							html span: [html html: gc label].
							html text: ', '.

							html span: 'Original search text: '.
							html span: gc searchString.
						] ifFalse: [
							html span: 'Latitude: '.
							html textInput
								on: #latitudeString of: gc.
							html span: 'Longitude: '.
							html
								textInput on: #longitudeString of: gc.
						].

						html space.
						html anchor
							callback: [self removeGeocode: gc];
							with: [ html iconRemove ]

		]]].

		html div class: 'topBuffer'; with: [
			exists ifTrue: [
				html submitButton
	"				callback: [];"
					with: 'Accept change'.
				html space].
			html submitButton
				callback: [self addGeocode];
				with: '+ Search swiss geo location ...'.
			html space.
			html submitButton
				callback: [self addBlankGeocode];
				with: '+ Add blank geo location'.
			html space.
			html anchor
				url: 'https://www.latlong.net';
				target: '_blank';
				with: 'Search online for latitude/longitude ... '
		].

		exists ifTrue: [
			html div class: 'mapPreview'; with: swissmap.
			html div class: 'mapPreview'; with: worldmap].

	].