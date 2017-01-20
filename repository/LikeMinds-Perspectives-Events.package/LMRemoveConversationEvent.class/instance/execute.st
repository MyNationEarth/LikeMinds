as yet unclassified
execute
	"Remove the group for the source group from the appropriate target collection
	target: mind
	source: conversation"
	self checkPermission: #removeConversation.
	(target conversations includes: source) ifTrue: [target conversations remove: source].
	source events add: self.
	^source