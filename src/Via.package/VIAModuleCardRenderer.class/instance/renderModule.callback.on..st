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


				html ukImageWidth: '100%' height: '200px' url: (aModule imageAsset
						ifNotNil: [:e | e imageUrlCropWidth: 200 height: 200]
						ifNil: ['/files/images/module-card-placeholder.jpg']).
				html div class: 'hm-titel-box'; with: aModule title.
				html div class: 'hm-angaben-box'; with: [
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