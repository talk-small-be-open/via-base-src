as yet unclassified
displayName
	^ String streamContents: [:s |
		s << 'Mailing: '.
		s << (VIAHelper germanDateStringFor: self sentAt).
		s << ' "'.
		s << subject.
		s << '" in '.
		s << channelName asString.
		s << ' to '.
		s << toRoles asCommaString.
		s << '. Fails: '.
		s << self failedEmailsCount asString]