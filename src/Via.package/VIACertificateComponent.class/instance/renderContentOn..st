as yet unclassified
renderContentOn: html
	html div class: 'certificate'; with: [
		html paragraph class: 'toptext'; t: 'certificate:header'.
		html div class: 'logo'; with: [
			html image
				url: ('/site/images/', self website logoFilename);
				style: 'width:150px;height:auto'].
		html div class: 'banner'; with: [
			html span class: 'bannerText'; t: 'certificate:bannerText'.
			html image url: '/certificate/banner.svg'; width: '600'; height: '131'].
		html div: [html space].
		html heading level3; t: 'certificate:textBegin'.
		"'Si certifica che'."
		html heading level1; with: user fullName.
		html heading level3; t: 'certificate:textEnd'.
		"'ha svolto gli esercizi dei seguenti moduli:'."
		moduleExercises do: [:each |
			html paragraph: [
				html span class: 'modul'; with: each module title.
				html text: ' | '.
				html t: 'certificate:level'. "'livello '."
				html text: each module exerciseLevel.
				html text: ' | '.
				html text: each points greaseString.
				html text: '/'.
				html text: each maxPoints greaseString.
				html space.
				html t: 'certificate:points'. "' punti'."
			]].
		html div class: 'blumeli'; with: [html image url: '/certificate/blumeli.svg'; width: '120'; height: '37'].
		html paragraph: [html t: 'certificate:date'; space; text: Date today yyyymmdd].
		html div class: 'stempel'; with: [html image url: '/certificate/stamp.svg'; width: '200'; height: '200'].
		html div class: 'fusszeile'; t: 'certificate:footer'. 
		"'Progetto finanziato dall''Ufficio federale della Cultura svizzero e realizzato in collaborazione con i media della Svizzera italiana'."
		html div: [html space].
	]