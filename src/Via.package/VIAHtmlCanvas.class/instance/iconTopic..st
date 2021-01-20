icons
iconTopic: aTopicTag
	| popoverOptions |
	popoverOptions := {
		#title->aTopicTag displayName.
		#closeable->false.
		#placement->'auto-top'.
		#trigger->'hover'.
		#multi->true.
		#padding->true.
	} asDictionary.

	self image
		script: (self jQuery this call: 'webuiPopover' with: popoverOptions);
		class: 'icon iconTopic';
		title: aTopicTag displayName;
		url: '/site/images/topic-', aTopicTag code, '.svg'