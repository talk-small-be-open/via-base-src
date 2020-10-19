rendering
renderExtendedSearchOn: html
	| mc labelBlock autosubmitJs |
	mc := query moduleClassification.
	labelBlock := [:each | each displayName].
	autosubmitJs := (html jQuery id: 'searchButton') triggerClick.
	
	html div class: 'extendedSearch'; with: [
		html ukGrid
			class: 'uk-grid-small uk-child-width-1-1 uk-child-width-1-5@s';
			with: [
				html div: [html ukFormSelect: [:select |
					select
						onChange: autosubmitJs;
						beOptional;
						optionalLabel: ('searchForm:all:', VIADurationTag translationKey)t;
						list: (VIADurationTag allSortedForWebsite: self website);
						labels: labelBlock;
						on: #durationTag of: mc]].

				html div: [html ukFormSelect: [:select |
					select
						onChange: autosubmitJs;
						beOptional;
						optionalLabel: ('searchForm:all:', VIATopicTag translationKey)t;
						list: (VIATopicTag allSortedForWebsite: self website);
						labels: labelBlock;
						on: #topicTag of: mc]].
				
				html div: [html ukFormSelect: [:select |
					select
						onChange: autosubmitJs;
						beOptional;
						optionalLabel: ('searchForm:all:', VIAContextTag translationKey)t;
						list: (VIAContextTag allSortedForWebsite: self website);
						labels: labelBlock;
						on: #contextTag of: mc]].

				html div: [html ukFormSelect: [:select |
					select
						onChange: autosubmitJs;
						beOptional;
						optionalLabel: ('searchForm:all:', VIAActivityTypeTag translationKey)t;
						list: (VIAActivityTypeTag allSortedForWebsite: self website);
						labels: labelBlock;
						on: #activityTypeTag of: mc]].

				html div: [html ukFormSelect: [:select |
					select
						onChange: autosubmitJs;
						beOptional;
						optionalLabel: ('searchForm:all:', VIAGrammarTopicTag translationKey)t;
						list: (VIAGrammarTopicTag allSortedForWebsite: self website);
						labels: labelBlock;
						on: #grammarTopicTag of: mc]].
			].

	"		html ukGrid class: 'uk-text-right'; with: [
				html ukWidth: 1/1 with: ["
	"		html ukSubmitButton
				callback: [self performExtendedSearch];
				t: 'searchForm:search'"
			]