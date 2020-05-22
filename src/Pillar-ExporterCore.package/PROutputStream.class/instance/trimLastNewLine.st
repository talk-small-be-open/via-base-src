streaming
trimLastNewLine
  | newLine newPosition |
  newLine := self configuration newLine.
  newPosition := stream position - newLine size.
  ((newLine isEmpty or: [ stream position < newLine size ])
    or: [ newPosition = 0 ])
    ifTrue: [ ^ self ].
  stream position: newPosition