as yet unclassified
execute
	"Simply confirm this mind as a registered member of the system
	source: system
	target: mind"
	
	owner == source administrator
		ifTrue: [
			target _confirmed: true.
			^true
		].
	^false