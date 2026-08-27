public
clear
	searchString := nil.
	defaultRoles := #(user).
	searchRoles := #().
	searchRolesMatchAll := false.
	searchRolesMatchExact := false.
	searchSmartFilter := nil.

"	users := OrderedCollection new."
	self showUsers: OrderedCollection new
"implicit: 	self clearSelection"