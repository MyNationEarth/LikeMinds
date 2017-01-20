as yet unclassified
execute
	"Remove the group for the source group from the appropriate target collection"
	self checkPermission: #removeGroup.
	(target children includes: source) ifTrue: [
		(target isMemberOf: LikeMindsPerspective)
			ifTrue: [target children remove: source].
		(target isMemberOf: LikeMindsGroup)
			ifTrue: [target groups remove: source].
	].
	^source