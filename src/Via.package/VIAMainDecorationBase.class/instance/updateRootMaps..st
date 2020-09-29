as yet unclassified
updateRootMaps: anHtmlRoot

	"Maps SVG drawer"
	anHtmlRoot javascript url: '/js/raphael.min.js	'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/jquery.mapael.min.js'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/maps/switzerland.js'.
	anHtmlRoot javascript url: '/js/jQuery-Mapael-2.2.0/js/maps/world_countries_miller.js'.
