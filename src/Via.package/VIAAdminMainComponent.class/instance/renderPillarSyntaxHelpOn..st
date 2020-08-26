rendering
renderPillarSyntaxHelpOn: html
	html preformatted: '!Chapter 1
!!Chapter 2
!!!Chapter 3'.

	html preformatted: '
Lists:
- Unordered List
# Ordered list'.

	html preformatted: '
via specific:
${note:something|popupLine1|popupLine2|...}$
'.

	html preformatted: '
Table:
|! Header |! Header |! Header
|{Left  |}Right   | Centered'.

	html preformatted: '
""bold""
''''italic''''
--strikethrough--
__underscore__
@@subscript@@
^^super-script^^'.

	html preformatted: '
Links:

Anchor @anchor (new line)
Internal link *anchor*
External link *Google>http://google.com*
Image +Caption>file://image.png|width=50|label=label+
Asset +Caption>4bozbmywaefqleznke0r5aa7f|width=50+'.

	html preformatted: '
Inject raw HTML:

{{{html:
this is how you inject raw <b>­htm­l</­b> in your output file 
}}}
'.

	html preformatted: 'Use special Pillar characters:
\+ will output a "+" plus sign.
\* will output a "*" star sign.
'