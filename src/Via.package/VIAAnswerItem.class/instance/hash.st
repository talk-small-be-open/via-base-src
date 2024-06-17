comparing
hash
	"Too unprecise on GemStone platform for a fingerprint"
"	^ self equalityArray hash"

  | hashValue |
  hashValue := 4459.
  self equalityArray do: [ :each | 
      hashValue := (hashValue bitShift: -1) bitXor: each hash ].
  ^ hashValue abs