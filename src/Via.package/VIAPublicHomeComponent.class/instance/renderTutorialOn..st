rendering
renderTutorialOn: html
	| itCoords frCoords deCoords imageWidth stretch stretcher |
	
	"Originalwerte waren von 800px Breite"
	imageWidth := 600.
	stretch := imageWidth/600.
	stretcher := [:each | (each * stretch) rounded].
	
	"Map-Werte so finden: Mit GIMP öffnen und Koordination von Maus ablesen"
	itCoords := #(400 39 520 20 540 96 416 116) collect: stretcher.
	frCoords := #(446 106 571 122 557 198 437 177) collect: stretcher.
	deCoords := #(405 200 527 196 535 265 412 279) collect: stretcher.
	
	html div class: 'hm-fixed-background-a'; with: [
		html div class: 'uk-container hm-margin-large-vertical uk-text-center '; with: [
"			html div id: 'award'; with: [
				html anchor
					url: 'http://www.ielassoc.org/awards_program/past_winners.html';
					target: '_blank';
					with: [
						html image
							url: '/files/images/logo321viaIELA.png']]."
			self website hasTutorialVideo ifTrue: [
				html div class: 'videoTutorial'; with: [
					html image
						onClick: 'javascript:open321VideoTutorial("', self website languageCode, '")';
						attributeAt: #usemap put: '#videoTutorialMap';
						url: ('/files/video/', self website videoTutorialImageFilename).
					html html: ('
	<map name="videoTutorialMap">
	<area shape="poly" coords="', itCoords asCommaString,'" href="javascript:open321VideoTutorial(&apos;it&apos;)" />
	<area shape="poly" coords="', frCoords asCommaString,'" href="javascript:open321VideoTutorial(&apos;fr&apos;)" />
	<area shape="poly" coords="', deCoords asCommaString,'" href="javascript:open321VideoTutorial(&apos;de&apos;)" />
	</map>')

	"				html video
						autoplay: false;
						loop: true;
						controls: true;
						with: [
							html source
								url: '/files/video/public_home.mp4';
								type: 'video/mp4'.
							html source
								url: '/files/video/public_home.ogv';
								type: 'video/ogg']."
				]
			]
			]]