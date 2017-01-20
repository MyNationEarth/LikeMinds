as yet unclassified
execute
	"Copy the reciprocal group to the mind.contexts.groups for the group.parent perspective so they can use it
	source: group
	target: parent"
	| reciprocalCopy |
	self checkPermission: #copyGroup.
	reciprocalCopy := 
		((target isKindOf: LikeMindsConversation) 
			ifTrue: [source conversations]
			ifFalse: [source groups]) "Messy - should be cleaned up"
		 add: (target reciprocalCopyParent: source).
	^reciprocalCopy