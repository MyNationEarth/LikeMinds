as yet unclassified
execute
	| context |
	"Remove the context for the target perspective from the source mind"
	self checkPermission: #removeContext.
	(context := target contextForPerspective: source) ifNotNil: [
		target contexts remove: context.
	].
	^context