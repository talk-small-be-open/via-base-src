switch user
switchToLogout
	| adminBefore |
	"Admin: Logout but keep background admin."
	adminBefore := backgroundAdminUser ifNil: [ self user ].
	self logout.
	backgroundAdminUser := adminBefore.