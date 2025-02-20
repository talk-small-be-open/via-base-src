public
clear
	searchString := nil.
	searchRoles := #().
	searchRolesMatchAll := false.
	searchSmartFilter := nil.

"	users := OrderedCollection new."
	self showUsers: OrderedCollection new
"implicit: 	self clearSelection"