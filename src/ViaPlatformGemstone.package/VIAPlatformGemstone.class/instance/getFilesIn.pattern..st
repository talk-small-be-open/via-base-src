as yet unclassified
getFilesIn: aFolderString pattern: aPatternString
  ^ ((FileDirectory on: aFolderString asString)
    fileNamesMatching: aPatternString asString)
    collect: [ :each | aFolderString asString , '/' , each ]