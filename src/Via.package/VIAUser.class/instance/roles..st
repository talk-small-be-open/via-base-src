accessing
roles: aCollection
	roles
		removeAll;
		add: #user; "implicit role, always set"
		addAll: aCollection