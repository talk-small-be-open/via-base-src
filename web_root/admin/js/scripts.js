//
// VIA Admin JavaScript
//


/* Haupt JS init */
$(document).ready(function(){

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
	
	// Lazy load von Bildern installieren
	setLazy();
	lazyLoad();
	$(window).on('scroll', lazyLoad);

	
});
