//
// VIA JavaScript
//


// Creates group of items whenever their value from borderChecker(item) changes
// Example: runningGroupArray(['aaa', 'aaa', 'eee', 'ww', 'tt', 'ttt', 'zzz'], function(item){return item.length})
// => [["aaa", "aaa", "eee"], ["ww", "tt"], ["ttt", "zzz"]]
function runningGroupArray(array, borderChecker) {
	var lastValue;
	var currentCollection;
	return _.reduce(array, function(output, item) {
		var thisValue = borderChecker(item);
		if (lastValue != thisValue) {
			lastValue = thisValue;
			currentCollection = [];
			output.push(currentCollection)
		}
		currentCollection.push(item);
		return output
	}, [])
}

function saveScroll(id) {
	var y = $(document).scrollTop();
	// Kurze Dauer, sonst können sich zuviele anhäufen
	var inFifteenMinutes = new Date(new Date().getTime() + 15 * 60 * 1000);
	Cookies.set("page_scroll_" + id, y, { expires: inFifteenMinutes });
}

function loadScroll(id) {
	var y = Cookies.get("page_scroll_" + id);
	if (!y) {return}
	$(document).scrollTop(y);
}


function login_facebook() {
	var url = [window.location.protocol, '//', window.location.host].join('');

	hello.login("facebook", {redirect_uri: url, scope: 'email'}, function(auth) {
		window.location.href = window.location.pathname+"?"+$.param({"access_token": auth.authResponse.access_token, "network": auth.authResponse.network});})
}

function login_google() {
	var google = hello('google');
	var url = [window.location.protocol, '//', window.location.host].join('');
	
	google.login({redirect_uri: url, scope: 'email'}, function(auth) {
		
		google.api('me').then(function(json) {
			window.location.href = window.location.pathname+"?"+$.param({"access_token": auth.authResponse.access_token, "network": auth.authResponse.network, "first_name": json.first_name, "last_name": json.last_name, "email": json.email});
		});
	});
}

function selectmany_preventTooManyChecks(regionId, number, message) {
	if ($('#'+regionId+' input:checkbox:checked').length > number) {
		alert(message);
		return false;
	}
	return true;
}

function onMapPairsDrop(dropzone, draggable) {
  $(dropzone).children('div.rightObject').prepend(draggable);
	$(draggable).css({top:0, left:0});
}

function onDragDropDrop(dropzone, draggable) {
  $(dropzone).append(draggable);
	$(draggable).css({top:0, left:0});
}

/* Markiert den Inhaltstext im Browser eines HTML-Elements. Praktisch für anschliessendes copy/paste */
function selectTextIn(jQueryElements) {
	var range = document.createRange();
  var selection = window.getSelection();
  range.selectNodeContents(jQueryElements[0]);
  
  selection.removeAllRanges();
  selection.addRange(range);
}


// Rangy Library

function highlightAreas_removeHighlight(element) {
	var highlightAreas = $(element).closest('div.highlightAreas');
	var highlighter = highlightAreas.data('highlighter');
	var highlights;
	
	var range = rangy.createRange();
	range.selectNode(element);
	highlights = highlighter.getIntersectingHighlights([range]);
  highlighter.removeHighlights(highlights);

	
	// Notifikation
	highlightAreas.trigger('via:unhighlight', [null, highlighter]);
}

function highlightAreas_setup(elementId) {

	var element = $('#' + elementId);
	var highlighter;
	var highlightStyleApplier;

	rangy.init();

	highlightStyleApplier = rangy.createClassApplier("selectedText", {
		tagNames: ['span', 'strong', 'em', 'b'], // Muss explizit sein, kein *
		elementAttributes: {onclick: 'highlightAreas_removeHighlight(this)'},
		normalize: true, // Benachbarte zusammenfassen
		ignoreWhiteSpace: true,
		onElementCreate: function(element, classApplier){},
		useExistingElements: true
	});

	highlighter = rangy.createHighlighter(null, 'TextRange');
	highlighter.addClassApplier(highlightStyleApplier);

	element.data('highlighter', highlighter);

	// Mouse-Up Handler, NACH dem evt. markieren
	element.bind("pointerup", function(){
		var selection = rangy.getSelection();
		selection.trim();
		
		var range = selection.getRangeAt(0);
		var newHighlights;
		var newHighlight;

		if (range.collapsed) {
			return
		}

		// Trim range white spaces
		
		
		newHighlights = highlighter.highlightSelection('selectedText', {containerElementId: elementId, exclusive: true});
		newHighlight = newHighlights[0];

		var leftArea = $(range.startContainer).closest("span.highlightArea");
		var rightArea = $(range.endContainer).closest("span.highlightArea");

		// Test, ob innerhalb Markierzone geklickt wurde
		if (leftArea[0] && (leftArea[0] == rightArea[0])) {
			leftArea.trigger('via:highlight', [newHighlight, highlighter]);
		} else {
//			console.log('daneben');
			element.trigger('via:highlight', [newHighlight, highlighter]);
		}

		// Remove native selection
		rangy.getSelection().removeAllRanges();
		
	});

	element.trigger('via:restoreHighlights', highlighter);
  
}

function textinput_markAsEmpty(event, elementId) {
	var element = $('#'+elementId);
	event.stopPropagation();

	element.toggleClass('markedAsEmpty');

	if (element.hasClass('markedAsEmpty')) {
		$(event.target).addClass('active');
		element.val('---')
	} else {
		$(event.target).removeClass('active');
		element.val('')		
	}	
}

// Warns the user, of the page is being unloaded. Only submit buttons are allowed to go to another page.
// Used for exams, to prevent data loss.
function enableUnloadWarning() {

	$(window).on('beforeunload', function (e) {
		// Cancel the event
		e.preventDefault(); // If you prevent default behavior in Mozilla Firefox prompt will always be shown
		// Chrome requires returnValue to be set
		e.returnValue = '';
	});

	// Every submit button should be allowed to unload the page
	$('form').submit(function() {
		$(window).off('beforeunload');
	});
}


//
// LAZY Images
//

var lazy = [];

function setLazy(){
    lazy = document.querySelectorAll('img.lazy');
//    console.log('Found ' + lazy.length + ' lazy images');
} 

function lazyLoad(){
    for(var i=0; i<lazy.length; i++){
        if(isInViewport(lazy[i])){
            if (lazy[i].getAttribute('data-src')){
                lazy[i].src = lazy[i].getAttribute('data-src');
                lazy[i].removeAttribute('data-src');
            }
        }
    }
    
    cleanLazy();
}

// Schneller filter
function cleanLazy(){
    lazy = Array.prototype.filter.call(lazy, function(l){ return l.getAttribute('data-src');});
}

// OPTIMIZE: Abfrage auch auf visible? Schwierig: Reagieren auf, wenn eingeblendet
function isInViewport(el){
    var rect = el.getBoundingClientRect();
    
    return (
        rect.bottom >= 0 && 
        rect.right >= 0 && 
        rect.top <= (window.innerHeight || document.documentElement.clientHeight) && 
        rect.left <= (window.innerWidth || document.documentElement.clientWidth)
     );
}





/* Haupt JS init */
$(document).ready(function(){

	JoelPurra.PlusAsTab.setOptions({
		// Use the enter key as tab keys
		key: [13]
	});	

	$('.popover').webuiPopover({trigger:'hover'});
	$('span.dictionaryEntry').webuiPopover({trigger:'hover'});
	$('input.clozeTextPlaceholder').plusAsTab();

  $("textarea").autosize();

	$.mapael.prototype.defaultOptions = {
    map: {
      cssClass: "map",
      tooltip: {
        cssClass: "mapTooltip"
      },
      defaultArea: {
        attrs: {
          fill: "#343434",
          stroke: "#5d5d5d",
          "stroke-width": 1,
          "stroke-linejoin": "round"
        },
        attrsHover: {
          fill: "#777777",
          animDuration: 300
        },
        text: {
          position: "inner",
          margin: 10,
          attrs: {
            "font-size": 15,
            fill: "#c7c7c7"
          },
          attrsHover: {
            fill: "#eaeaea",
            "animDuration": 300
          }
        },
        target: "_self",
        cssClass: "area"
      },
      defaultPlot: {
        type: "circle",
        size: 15,
        attrs: {
          fill: "#0088db",
          stroke: "#eee",
          "stroke-width": 1,
          "stroke-linejoin": "round"
        },
        attrsHover: {
          "stroke-width": 2,
          animDuration: 300
        },
				// tooltip: {
				// 	overflow: {right: true, bottom: false},
				// 	offset: {left: 10, top: -75}
				// },
        text: {
          position: "right",
          margin: 10,
          attrs: {
            "font-size": 15,
            fill: "#c7c7c7"
          },
          attrsHover: {
            fill: "#eaeaea",
            animDuration: 300
          }
        },
        target: "_self",
        cssClass: "plot"
      },
      defaultLink: {
        factor: 0.5,
        attrs: {
          stroke: "#0088db",
          "stroke-width": 2
        },
        attrsHover: {
          animDuration: 300
        },
        text: {
          position: "inner",
          margin: 10,
          attrs: {
            "font-size": 15,
            fill: "#c7c7c7"
          },
          attrsHover: {
            fill: "#eaeaea",
            animDuration: 300
          }
        },
        target: "_self",
        cssClass: "link"
      },
      zoom: {
        enabled: false,
        minLevel: 0,
        maxLevel: 10,
        step: 0.25,
        mousewheel: false,
        touch: false,
        animDuration: 200,
        animEasing: "linear",
        buttons: {
          "reset": {
            cssClass: "zoomButton zoomReset",
            content: "&#8226;", // bullet sign
            title: "Reset zoom"
          },
          "in": {
            cssClass: "zoomButton zoomIn",
            content: "+",
            title: "Zoom in"
          },
          "out": {
            cssClass: "zoomButton zoomOut",
            content: "&#8722;", // minus sign
            title: "Zoom out"
          }
        }
      }
    },
    legend: {
      redrawOnResize: true,
      area: [],
      plot: []
    },
    areas: {},
    plots: {},
    links: {}
  };
	
	// $('video,audio').mediaelementplayer(/* Options */);

	// Lazy load von Bildern installieren
	setLazy();
	lazyLoad();
	$(window).on('scroll', lazyLoad);

	
});
