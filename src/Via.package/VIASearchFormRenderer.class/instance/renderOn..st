rendering
renderOn: html
	html div class: 'searchBarContainer'; with: [
		html ukContainer: [
			html div class: 'searchBar'; id: html nextId; with: [
				html form
					defaultAction: [self performSearch];
"					class: 'uk-search uk-search-default';" "uk-search-default"
					with: [
						html ukGrid class: 'uk-grid-small'; with: [
							html div class: 'uk-width-auto@m uk-flex uk-flex-middle'; with: [
								html div class: 'uk-search uk-search-default'; with: [
									html span a: 'uk-search-icon'.
									html textInput
										type: 'search';
										placeholder: ('searchForm:searchTextPlaceholder't);
										class: 'uk-search-input';
										on: #searchText of: self ]].

							html div class: 'uk-width-auto@m uk-flex uk-flex-middle uk-flex-between'; with: [
								self renderLevelButtonsOn: html ].
									
							html div class: 'uk-width-expand@m uk-flex uk-flex-middle'; with: [
								self renderActionButtonsOn: html.
							]
					].

					html div
						class: 'uk-hidden' if: self isExtendedSearch not;
						with: [
							self renderExtendedSearchOn: html].
							
					]]]]