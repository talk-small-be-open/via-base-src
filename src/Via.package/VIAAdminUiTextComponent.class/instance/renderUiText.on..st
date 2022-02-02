rendering
renderUiText: aKey on: html
	| pillar |
"	pillar := (self db uiTextAt: aKey).
	text := VIAHelper pillarStringFromPillar: pillar.

	text size <= 4 ifTrue: [ html text: text ] ifFalse: ["

	pillar := (self db uiTextAt: aKey).
	html pillar: pillar