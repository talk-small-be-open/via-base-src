icons
iconActivityType: anActivityTypeTag
	| popoverOptions |
	popoverOptions := {
		#title->anActivityTypeTag displayName.
		#closeable->false.
		#placement->'top'.
		#trigger->'hover'.
		#multi->true.
		#padding->true.
	} asDictionary.

	self image
		script: (self jQuery this call: 'webuiPopover' with: popoverOptions);
		class: 'icon iconActivityType';
		title: anActivityTypeTag displayName;
		url: '/site/images/activity-type-', anActivityTypeTag code, '.svg'