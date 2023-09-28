as yet unclassified
basenameNoExtensionOfFile: aString
  | start stop |
  start := aString findLast: [ :c | c = $/ ].
  stop := aString findLast: [ :c | c = $. ].
  stop = 0
    ifTrue: [ stop := aString size + 1 ].
  ^ aString copyFrom: start + 1 to: stop - 1