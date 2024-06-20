initialization
initialize
	super initialize.
	createdAt := DateAndTime now.
	code := UUID new asString.
	self beSingleExecutable.
	executionsCount := 0.
	isAutologin := false.
	self beLoginNotRequired.
	self beLogoutNotRequired