switch user
switchBackToAdmin
	"Admin Funktion: Zurück zum Admin einloggen"
	backgroundAdminUser ifNotNil: [
		self loginUser: backgroundAdminUser.
		backgroundAdminUser := nil]