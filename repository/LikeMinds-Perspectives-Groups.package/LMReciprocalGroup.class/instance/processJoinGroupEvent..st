as yet unclassified
processJoinGroupEvent: anEvent
  | group |
  group := anEvent source groups
    detect: [ :g | g key = key ]
    ifNone: [ 
      self system
        copyReciprocalGroup: self
        parent: anEvent source
        owner: anEvent owner ].
  self addOwnerToGroup: group event: anEvent