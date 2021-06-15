rendering
renderP2pSynchronizationOn: html

	talkmasterComponent ifNotNil: [
		self ifPlayer1: [
"			p2pComponent send: self stepIndex."
		]
		else: [
"			p2pComponent onData: (JSStream on: 'tandemGotoQAndA(data)')"
		].

		talkmasterComponent onData: (
			(html jQuery ajax)
				callback: [:d | self ajaxProcessP2pData: d ] json: (JSStream on: 'data');
				onSuccess: ((((html jQuery id: gameBoardId) load
					html: [ :h | self renderPageLogicOn: h ]) condition: 'answer=="reload"')
					asFunction: #(answer status));
				dataType: 'text'	
		).

		html render: talkmasterComponent
	]