as yet unclassified
execute
  "join a group. Create a new LMPerspectiveContext if one doesn't already exist
	aource: mind
	target: group"

  owner == source
    ifTrue: [ self checkPermission: #'joinGroup' ]
    ifFalse: [ self checkPermission: #'addMembers' ].
  (target members includes: source)
    ifFalse: [ 
      target members add: source.
      source events add: self ].
  ^ true