rendering-visitor
renderVideoPlayer: aVideoPlayer on: html
	| v i assets |

	v := 'somethingdefaultsilly'.

	assets := (self wd videoAssets sortedReversedBy: [ :each | each createdAt ]).
		
	self renderInputEditorFor: aVideoPlayer on: html with: [
		aVideoPlayer hasVideo ifTrue: [
			html div: [
				html video
					id: (v := html nextId);
					preload: 'metadata';
					poster: aVideoPlayer videoAsset posterUrl;
					controls: true;
					style: 'width:400px';
					with: [html source type: aVideoPlayer videoAsset mimeType; url: aVideoPlayer videoAsset videoUrl].
		]].

		html skRow: [
			html skColumnWidth: 'ten' with: [
				html selectize
					list: assets;
					labels: [:each | each displayName];
					beOptional;
					on: #videoAsset of: aVideoPlayer ]].

		html skRow: [
			html skColumnWidth: 'two' with: [
				html label: 'Still image [0:00:00.00]'.
				html textInput
					id: (i := html nextId);
					script: (html jQuery this dataAt: 'sec' put: (aVideoPlayer posterImageTimeMs / 1000));
					on: #posterImageTimeString of: aVideoPlayer.
				html div class: 'videoTimingTools'; with: [
					html anchor
						onClick: ('document.getElementById("',v,'").currentTime = $("#',i,'").data("sec");');
						with: 'GOTO'.
					html anchor
						onClick: 'videoTakeTime("',v,'", "',i,'", true);';
						with: 'SET'.
					html anchor
						onClick: ('document.getElementById("',v,'").currentTime = $("#',i,'").data("sec") - 0.04;', 'videoTakeTime("',v,'", "',i,'", true);');
						with: '<<'.
					html anchor
						class: 'clickAction';
						onClick: ('document.getElementById("',v,'").currentTime = $("#',i,'").data("sec") + 0.04;', 'videoTakeTime("',v,'", "',i,'", true);');
						with: '>>'.
				]
			].
			html skColumnWidth: 'two' with: [
				html label: 'Start time [0:00:00]'.
				html textInput
					id: (i := html nextId);
					script: (html jQuery this dataAt: 'sec' put: (aVideoPlayer startSeconds));
					on: #startTimeString of: aVideoPlayer.
				html div class: 'videoTimingTools'; with: [
					html anchor
						onClick: ('document.getElementById("',v,'").currentTime = $("#',i,'").data("sec");');
						with: 'GOTO'.
					html anchor
						onClick: 'videoTakeTime("',v,'", "',i,'");';
						with: 'SET'
				].
			].
			html skColumnWidth: 'two' with: [
				html label: 'End time [0:00:00]'.
				html textInput
					id: (i := html nextId);
					script: (html jQuery this dataAt: 'sec' put: (aVideoPlayer endSeconds));
					on: #endTimeString of: aVideoPlayer.
				html div class: 'videoTimingTools'; with: [
					html anchor
						onClick: ('document.getElementById("',v,'").currentTime = $("#',i,'").data("sec");');
						with: 'GOTO'.
					html anchor
						onClick: 'videoTakeTime("',v,'", "',i,'");';
						with: 'SET'
				].
					
			].
			html skColumnWidth: 'two' with: [
				html label: 'Width: '.
				html numberInput
					min: 10;
					"max: 1000;"
					on: #width of: aVideoPlayer
			].
			html skColumnWidth: 'two' with: [
				html label: [
					html checkbox on: #noSound of: aVideoPlayer.
					html space.
					html text: 'No sound'.
			]].
		].
		html label: 'Transcription'.
		aVideoPlayer transcriptionPillar isParseOk ifFalse: [
			self renderPillarSyntaxError: aVideoPlayer transcriptionPillar parseError on: html
		].

		self renderPillarInput: #pillarString of: aVideoPlayer transcriptionPillar on: html.

	 ]