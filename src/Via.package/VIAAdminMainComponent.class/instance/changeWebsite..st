as yet unclassified
changeWebsite: aWebsite
	self session website: aWebsite.

	self reset.
"	tabbedNavigationComponent components do: [:each | each value home]."