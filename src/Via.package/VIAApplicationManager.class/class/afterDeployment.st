updating
afterDeployment
	"subclasses"

"Allways?	self registerSeasideComponents."

	"Load new tasks, if any"
	WAGemStoneMaintenanceTask initialize.
	
	self ensureDefaultRenderer.