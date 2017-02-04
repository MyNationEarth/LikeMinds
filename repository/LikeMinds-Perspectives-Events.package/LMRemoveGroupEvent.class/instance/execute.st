as yet unclassified
execute
  "Remove the group for the source group from the appropriate target collection"

  self checkPermission: #'removeGroup'.
  (target children includes: source)
    ifTrue: [ 
      (target isMemberOf: LMPerspective)
        ifTrue: [ target children remove: source ].
      (target isMemberOf: LMGroup)
        ifTrue: [ target groups remove: source ] ].
  ^ source