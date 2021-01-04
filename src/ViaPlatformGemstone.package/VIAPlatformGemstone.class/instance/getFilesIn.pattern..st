as yet unclassified
getFilesIn: aFolderString pattern: aPatternString
  ^ ((FileDirectory on: aFolderString) fileNamesMatching: aPatternString)
    collect: [ :each | aFolderString , '/' , each ]