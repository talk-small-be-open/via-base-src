as yet unclassified
moveFileNamed: aSource toFolder: aTarget
  (FileDirectory on: aTarget) assureExistence.
  MCLPlatform
    runShellCommand:
      'chmod +x "' , aTarget , '" ; mv "' , aSource , '" "' , aTarget , '"'