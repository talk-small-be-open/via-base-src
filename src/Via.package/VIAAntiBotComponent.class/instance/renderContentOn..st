rendering
renderContentOn: html
	| catchall camouflageStyle |
	
	self resetDetection.
	
	catchall := [ :value | self incoming: value ].
	camouflageStyle := 'border-color:transparent;background-color:transparent;'.
	
	"Versteckt, damit Menschen es nicht ausfüllen"
	html div style: 'height: 0.1px; overflow: hidden'; with: [
		"Einmal challenge, weil sonst das Formular einfach nochmals gepostet werden könnte"
		"Und: Leeren der Felder per Javascript, weil gewisse Browser beim Autofüllen diese Felder füllen, aber Bots führen eher kein Javascript aus"
		html textInput
			noTab;
			script: ((html jQuery this closest: 'form') onSubmit: ((html jQuery: 'input.webappab') value: ''));
			callback: [ :ch | self confirmChallenge: ch ];
			style: camouflageStyle;
			with: challenge.

		"Fake inputs, welche immer leer bleiben müssen, sonst ist es ein Bot"
		"Es kann jedoch sein, dass der Browser mit Autofill ebenfalls das ausfüllt"
		html textInput
			noTab;
			class: 'required name lastName webappab';
			style: camouflageStyle;
			callback: catchall.
		html textInput
			noTab;
			class: 'required name firstName webappab';
			style: camouflageStyle;
			callback: catchall.
		html textInput
			noTab;
			class: 'required name email webappab';
			style: camouflageStyle;
			callback: catchall.
	]