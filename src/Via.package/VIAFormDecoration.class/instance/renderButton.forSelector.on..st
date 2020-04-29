rendering
renderButton: aLabelSymbol forSelector: aMethodSymbol on: html
	| callback |
	callback := [self decoratedComponent perform: aMethodSymbol].
	(self isCancelButton: aMethodSymbol) ifTrue: [
		html anchor
"			class: 'showWhenDirty';"
			callback: callback;
			t: aLabelSymbol.
		^self].
	(self isCloseButton: aMethodSymbol) ifTrue: [
		html anchor
"			class: 'hideWhenDirty';"
			callback: callback;
			t: aLabelSymbol.
		^self].

	"Normal Button"
	html submitButton
		class: 'button-primary';
"		class: 'dirtyWarn';"
		callback: callback;
		t: aLabelSymbol