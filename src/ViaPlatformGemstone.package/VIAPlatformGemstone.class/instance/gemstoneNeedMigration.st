as yet unclassified
gemstoneNeedMigration
  | needMigration |
  needMigration := OrderedCollection new.
  VIAObject allSubclasses
    do: [ :each | 
      needMigration
        addAll:
          (each classHistory allButLast
            select: [ :eachClass | eachClass allInstances size > 0 ]) ].
  ^ needMigration