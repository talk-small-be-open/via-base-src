*Via
maintenanceTaskVia5Minutes
  "self initialize"

  ^ self
    name: 'via 5 minutes task'
    frequency: 5
    valuable: [ :task | 
      GsFile gciLogServer: 'Starting via 5 minutes task at ', DateAndTime now printString, ' ...'.
      System transactionMode ~~ #'autoBegin' ifTrue: [System beginTransaction].
		VIAApplicationManager runTasksAll5Minutes.
      GsFile gciLogServer: '...finished'.
      System commitTransaction]