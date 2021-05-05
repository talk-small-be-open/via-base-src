rendering
renderContentOn: html
	
	self session wantsDeviceDetection ifTrue: [
		html scriptDefer: (
			(JSStream on: 'window.addEventListener("resize", debounce(function(){'),
			(html jQuery ajax
				callback: [:string | self changeDeviceWindowSize: string ]
				value: (JSStream on: 'window.innerWidth');
				dataType: 'text')),
			(JSStream on: '}, 1000, false));')
	].

	self renderNextOn: html