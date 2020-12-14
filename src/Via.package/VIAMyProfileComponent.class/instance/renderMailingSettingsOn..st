rendering
renderMailingSettingsOn: html
	| mc |
	mc := user mailingConfiguration.
	
"	html heading level3; with: 'Mailing settings'."
	html div class: 'uk-margin'; with: [
		html label class: 'uk-form-label'; t: 'mailingConfiguration:globalEnabled'.
		html div class: 'uk-form-controls'; with: [
			html label: [
				html ukCheckbox
					value: mc globalEnabled;
					callback: [:value | mc globalEnabled: value ].
				html space.
				html span t: 'general:yes' ].
			]].

	mc channelInfoDo: [:id :uiKey :enabled |
		html div class: 'uk-margin'; with: [
			html label class: 'uk-form-label'; t: uiKey.
			html div class: 'uk-form-controls'; with: [
				html label: [
					html ukCheckbox
						value: (mc isChannelEnabled: id);
						callback: [:value | mc channel: id enabled: value ].
					html space.
					html span t: 'general:yes']
	]]]