*viaplatformgemstone
defaultLimit
  "Return the maximum number dictionary entries to accept.
	Used by ZnMultiValueDictionary and thus for reading headers, 
	url query and application form url encoded entity fields.
	This helps to protect us from malicious content."

  "modified for via. 256 ist few, since we have alot of big HTML forms"

  ^ 4096