rendering
renderJavascriptOn: html

	"REMARK: Do not defer loading, because we want that to be as early as possible"
"	html scriptDefer: js."
	html script: self jsStart