via
printThisButton: aJquerySelector
"
{
 *      debug: false,                   // show the iframe for debugging
 *      importCSS: true,                // import parent page css
 *      importStyle: false,             // import style tags
 *      printContainer: true,           // grab outer container as well as the contents of the selector
 *      loadCSS: 'path/to/my.css',      // path to additional css file - use an array [] for multiple
 *      pageTitle: '',                  // add title to print page
 *      removeInline: false,            // remove all inline styles from print elements
 *      removeInlineSelector: 'body *', // custom selectors to filter inline styles. removeInline must be true
 *      printDelay: 333,                // variable print delay
 *      header: null,                   // prefix to html
 *      footer: null,                   // postfix to html
 *      base: false,                    // preserve the BASE tag, or accept a string for the URL
 *      formValues: true,               // preserve input/form values
 *      canvas: false,                  // copy canvas elements
 *      doctypeString: '...',           // enter a different doctype for older markup
 *      removeScripts: false,           // remove script tags from print content
 *      copyTagClasses: false           // copy classes from the html & body tag
 *      beforePrintEvent: null,         // callback function for printEvent in iframe
 *      beforePrint: null,              // function called before iframe is filled
 *      afterPrint: null                // function called before iframe is removed
 *  
"

	(self clickButton: '$("', aJquerySelector, '").printThis( { importStyle: true, loadCSS: "/css/print/print.css" } );')
		class: 'printThis';
		with: [
			self iconPrint; space.
			self t: 'via:printThis']