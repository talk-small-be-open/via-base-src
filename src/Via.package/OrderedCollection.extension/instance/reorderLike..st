*Via
reorderLike: aCollection
	"Change the orders to what it is in aCollection"
	
	self sortByKey: [ :each | aCollection indexOf: each ifAbsent: [ aCollection size + 1 ] ]