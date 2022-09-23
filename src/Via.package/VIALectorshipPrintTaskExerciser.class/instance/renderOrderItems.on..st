rendering-visitor
renderOrderItems: anOrderItems on: html
	| listTag |

	html div: [

		listTag := anOrderItems showNumbers ifTrue: [ html orderedList ] ifFalse: [ html unorderedList ].
		
		listTag with: [
			anOrderItems items do: [:each |
				html listItem: [
					each acceptRenderingVisitor: self on: html]]]].