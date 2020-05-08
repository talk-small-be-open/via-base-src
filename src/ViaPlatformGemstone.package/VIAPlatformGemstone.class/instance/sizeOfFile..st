as yet unclassified
sizeOfFile: aString
  ^ [ 
  (FileDirectory default directoryEntryFor: aString)
    ifNotNil: [ :e | e fileSize ]
    ifNil: [ 0 ] ]
    ifError: [ 0 ]