as yet unclassified
renderModule: aModule callback: aBlock on: html
	html anchor callback: aBlock; with: [
		html ukPanel
			class: 'moduleCard normal';
			class: (component levelCss: aModule);
			with: [
				(self isInPortfolioModule: aModule) ifTrue: [
					(self isDoneModule: aModule) ifTrue: [
						html span
							class: 'done-badge';
							with: [html iconDone].
					].
					(self isInWorkByMeModule: aModule) ifTrue: [
						html span
							class: 'inWork-badge';
							with: [html iconInWork].
					].
				].
				html span
					class: 'level-badge';
					class: 'level-', aModule exerciseLevel asLowercase;
					with: aModule exerciseLevel.
				aModule isExam ifTrue: [
					html span
						title: 'moduleCard:isAnExam't;
						class: 'popover exam-badge';
						with: [html iconExam].
				].

				aModule imageAsset ifNil: [
					html image width: 200; height: 200; url: '/images/module-card-placeholder.jpg' ]
				ifNotNil: [ 
					html
						ukImageWidth: 200
						height: 200
						url: (aModule imageAsset imageUrlCropWidth: 200 height: 200)
						hidpiUrl: (aModule imageAsset imageUrlCropWidth: 400 height: 400)
				].
						
				html div class: 'tdu-titel-box'; with: aModule title.
				html div class: 'tdu-angaben-box'; with: [
					html iconDurationTag: aModule durationTag.
					html unorderedList
						class: 'activityTypeTags';
						with: [
							aModule activityTypeTagsAndOccurrenciesDo: [:each :count |
								html listItem: [
									html span class: 'activityTypeCount'; with: count greaseString.
									html iconActivityType: each]]]].

				self renderTags: aModule on: html.

"				self renderRatingOf: aModule on: html."
				
				]]