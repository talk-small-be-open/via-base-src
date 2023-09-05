rendering
renderPillarSyntaxHelpOn: html
	html div class: 'syntaxHelp'; with: [
		html skColumnWidth: 'six' with: [

	html strong: 'Chapters:'.
	html preformatted: '!Chapter 1
!!Chapter 2
!!!Chapter 3'.

	html strong: 'Lists:'.
	html preformatted: '- Unordered List
# Ordered list

;termA
:definitionA
;termB
:definitionB
'.

	html strong: 'via specific:'.
	html preformatted: '${note:something|popupLine1|popupLine2|...}$
'.

	html strong: 'Table:'.
	html preformatted: '|! Header |! Header |! Header
| some    | normal  | text
|{ left   |} right  || centered'.

	html strong: 'Text formatting:'.
	html preformatted: '
""bold""
''''italic''''
--strikethrough--
__underscore__
@@subscript@@
^^super-script^^'.

	html strong: 'Misc:'.
	html preformatted: '
_ horizontal line
% Just a comment line without output
'

].
		html skColumnWidth: 'six' with: [

	html strong: 'Links:'.
	html preformatted: 'Anchor @anchor (new line)
Internal link to *jump to>@anchor*
Link to module by index *See also this module>MOD:2.15*
External link *Google>https://google.com*
Mailto *Write John>john@cleese.uk*
'.

	html strong: 'Assets:'.
	html preformatted: 'Web image +Caption>https://www.blabla.ch/image.png|width=50+
Local image +Caption>/xyz/image.png|width=50+
Asset image +img:4bozbmywaefqleznke0r5aa7f|width=50+
Audio +audio:4bozbmywaefqleznke0r5aa7f|start=50|end=60+
Document +Linktext>doc:4bozbmywaefqleznke0r5aa7f+
'.

	html strong: 'Inject raw text:'.
	html preformatted: '{{{no pillar just text}}}'.

	html strong: 'Inject raw HTML:'.
	html preformatted: '{{{html:
this is how you inject raw <b>­htm­l</­b> in your output file 
}}}
'.

	html strong: 'Special styled paragraphs and texts:'.
	html preformatted: '@@style This is a paragraph styled with a style.
This is a ((style word)) with a style.

Ask your developer for available styles (CSS).
'.

	html strong: 'Use special Pillar characters:'.
	html preformatted: '\+ will output a "+" plus sign.
\* will output a "*" star sign.
\_ will output a "_" underscore sign.
'
]]