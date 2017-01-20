as yet unclassified
execute
	"remove member from group"
	owner == source 
		ifTrue: [self checkPermission: #leaveGroup]
		ifFalse: [self checkPermission: #removeMembers].
	
	(target members includes: source) ifTrue: [
		target members remove: source.
		source events add: self.
	].
	^true