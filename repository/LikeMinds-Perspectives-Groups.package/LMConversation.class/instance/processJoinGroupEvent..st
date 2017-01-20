as yet unclassified
processJoinGroupEvent: anEvent
  | group |
  group := anEvent source conversations
    detect: [ :g | g key = key ]
    ifNone: [ 
      self system
        copyReciprocalGroup: self
        parent: anEvent source
        owner: anEvent owner ]