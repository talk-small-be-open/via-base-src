as yet unclassified
gemstoneMigrateAll
  | needMigration |
  needMigration := self gemstoneNeedMigration.
  needMigration
    do: [ :each | 
      | success |
      success := System commitTransaction.
      (success and: [ System transactionMode = #'manualBegin' ])
        ifTrue: [ System beginTransaction ].
      each migrateInstancesTo: each classHistory currentVersion ].
  ^ needMigration