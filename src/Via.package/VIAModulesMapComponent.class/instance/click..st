as yet unclassified
click: aGeocode
	| modules |

	modules := self modulesFor: aGeocode.

	onClickBlock value: modules