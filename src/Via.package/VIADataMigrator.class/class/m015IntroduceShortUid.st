as yet unclassified
m015IntroduceShortUid
	| uid |
	uid := 321.
	self db modules do: [:each |
		each shortUid: uid.
		uid := uid + 1]