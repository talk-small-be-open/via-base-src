as yet unclassified
renderCompositeTask: aCompositeTask on: html

	"Rudimentäres auflisten, ohne Edit-Funktionalität"

	html heading: 'Spy into "', aCompositeTask title, '"'.

	html unorderedList
		class: 'taskBricks';
		with: [
			aCompositeTask children do: [:each |
				html listItem class: 'taskChild'; with: [
					self renderTaskBrickHandle: each parentBrick: aCompositeTask on: html.
					each acceptRenderingVisitor: self on: html]]].
	
