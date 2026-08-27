accessing
roles
	"OPTIMIZE Overkill, dont do that always. roles is a set, so adding will not double it"
	^ roles copyWith: #user