comparing
< other
	| p1 p2 m n a b |
	p1 := self parts.
	p2 := other parts.
	m := p1 size.
	n := p2 size.
	1 to: (m min: n) do: [:i|
		a := p1 at: i.
		b := p2 at: i.
		a = b ifFalse: [
			^ a species = b species
				ifFalse: [ a className asLowercase < b className asLowercase ]
				ifTrue: [ a < b ]]].
	
	^ m < n