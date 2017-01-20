as yet unclassified
execute
	"Remove the mind from the system
	source: system
	target: mind"
	"Can only be performed by the administrator, and the administrator can't be removed"
	owner == source administrator ifFalse: [^false].
	target == source administrator ifTrue: [^false].
	"Remove the mind from:
		- All perspectives with contexts
		- All conversations
		- All groups
		- The directory."
	target groups copy do: [:group |
		source leaveGroup: group mind: target owner: target
	].
	(target contexts 
		"Make sure the directory is the last one removed"
		asSortedCollection: [:a :b | a perspective isSystemPerspective not]) copy 
		do: [:context |
			context conversations copy do: [:conversation |
				source removeConversation: conversation parent: context owner: target
			].
			source leaveGroup: context perspective mind: target owner: target
		].

	"TODO: Also remove everything to do with this mind's perspective hierarchy 
	so other minds don't reference it"

	^true