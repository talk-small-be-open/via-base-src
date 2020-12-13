rendering
renderMailingSettingsOn: html
	| mc |
	mc := user mailingConfiguration.
	
"	html heading level3; with: 'Mailing settings'."
	html div class: 'uk-form-row'; with: [
		html label class: 'uk-form-label'; t: 'mailingConfiguration:globalEnabled'.
		html div class: 'uk-form-controls'; with: [
			html checkbox
				value: mc globalEnabled;
				callback: [:value | mc globalEnabled: value ]]].

	mc channelInfoDo: [:id :uiKey :enabled |
		html div class: 'uk-form-row'; with: [
			html label class: 'uk-form-label'; t: uiKey.
			html div class: 'uk-form-controls'; with: [
				html checkbox
					value: (mc isChannelEnabled: id);
					callback: [:value | mc channel: id enabled: value ]
	]]]