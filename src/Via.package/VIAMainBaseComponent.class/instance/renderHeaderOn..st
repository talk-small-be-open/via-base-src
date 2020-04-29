rendering
renderHeaderOn: html
	"Optional: ; media: @s"
	html div class: 'hm-header'; a: 'uk-sticky' p: 'top: 400; show-on-up: true; animation: uk-animation-slide-top'; with: [ 
		html ukContainer: [
			html ukNavbar class: 'hm-navbar uk-navbar-transparent'; with: [
				self ifViewportSmall: [
					self renderNavbarSmallContentOn: html ]
				else: [
					self renderNavbarContentOn: html ]
	]]]