updating
afterDeployment
	"subclasses"

	"Should be always fresh calculated, since GemStone has class history"
	Current := nil.
	
"Allways?	self registerSeasideComponents."

	self configureGemStone.

	"Load new tasks, if any"
	WAGemStoneMaintenanceTask initialize.
	
	self ensureDefaultRenderer.