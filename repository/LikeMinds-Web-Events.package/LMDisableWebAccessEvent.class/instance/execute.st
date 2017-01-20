as yet unclassified
execute
	"Disable Web Access
	source: mind
	target: LikeMindsPierKernel"
	| user |
	user := target userNamed: source email ifNone: [^false].
	target users remove: user.
	^false