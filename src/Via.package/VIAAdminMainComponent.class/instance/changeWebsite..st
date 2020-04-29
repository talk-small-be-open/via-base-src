as yet unclassified
changeWebsite: aWebsite
	self session website: aWebsite.

	tabbedNavigationComponent components do: [:each | each value home].