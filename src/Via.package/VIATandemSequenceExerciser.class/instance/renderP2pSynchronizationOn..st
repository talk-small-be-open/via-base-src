rendering
renderP2pSynchronizationOn: html

	p2pComponent ifNotNil: [
		self ifPlayer1: [
"			p2pComponent send: self stepIndex."
		]
		else: [
"			p2pComponent onData: (JSStream on: 'tandemGotoQAndA(data)')"
		].

		p2pComponent onData: (
			(html jQuery ajax)
				callback: [:d | self ajaxProcessP2pData: d ] json: (JSStream on: 'data');
				onSuccess: ((((html jQuery id: gameBoardId) load
					html: [ :h | self renderPageLogicOn: h ]) condition: 'answer=="reload"')
					asFunction: #(answer status));
				dataType: 'text'	
		).

		html render: p2pComponent
	]