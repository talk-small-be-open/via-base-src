rendering
ajaxAction: aCallbackBlock on: html with: aBlock
	html div
		class: 'ajaxAction';
		onClick: ((html jQuery ajax)
			callback: aCallbackBlock;
			onSuccess: ((html jQuery id: gameBoardId) load
					html: [ :h | self renderPageLogicOn: h ])
			);
		with: aBlock