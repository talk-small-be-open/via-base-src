rendering
renderPillarSyntaxHelpOn: html
	html div class: 'syntaxHelp'; with: [
		html skColumnWidth: 'six' with: [

	html preformatted: '!Chapter 1
!!Chapter 2
!!!Chapter 3'.

	html strong: 'Lists:'.
	html preformatted: '- Unordered List
# Ordered list'.

	html strong: 'via specific:'.
	html preformatted: '${note:something|popupLine1|popupLine2|...}$
'.

	html strong: 'Table:'.
	html preformatted: '|! Header |! Header |! Header
|{Left  |}Right   | Centered'.

	html preformatted: '
""bold""
''''italic''''
--strikethrough--
__underscore__
@@subscript@@
^^super-script^^'.
].
		html skColumnWidth: 'six' with: [

	html strong: 'Links:'.
	html preformatted: 'Anchor @anchor (new line)
Internal link *anchor*
External link *Google>http://google.com*
Image +Caption>file://image.png|width=50|label=label+
Asset +Caption>4bozbmywaefqleznke0r5aa7f|width=50+'.

	html strong: 'Inject raw HTML:'.
	html preformatted: '{{{html:
this is how you inject raw <b>­htm­l</­b> in your output file 
}}}
'.

	html strong: 'Use special Pillar characters'.
	html preformatted: '\+ will output a "+" plus sign.
\* will output a "*" star sign.
'
]]