initialization
initialize
	super initialize.
	
	"Remarks: code is symbol. GemStone symbols have too low value hashes, so a bit complicated here ..."
	invitationCode := (code asString hash asString padLeftTo: 6 with: $0) first: 6.
	invitationCode := (invitationCode first: 3), '-', (invitationCode last: 3).