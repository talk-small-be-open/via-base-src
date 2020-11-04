rendering-visitor
renderFileDownloader: aFileDownloader on: html
	html div class: 'inputEditor'; with: [			
		html skRow: [
			html skColumnWidth: 'nine' with: [
				html select
					list: self wd assets reversed;
					labels: [:each | each displayName];
					beOptional;
					on: #asset of: aFileDownloader ].
	]]