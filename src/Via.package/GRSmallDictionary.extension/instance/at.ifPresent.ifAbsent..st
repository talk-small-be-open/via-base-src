*Via
at: key ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	"Copied from Dictionary"

	self at: key ifPresent: [:v | ^ aPresentBlock cull: v].
	^ anAbsentBlock value