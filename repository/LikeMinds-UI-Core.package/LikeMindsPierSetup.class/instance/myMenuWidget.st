as yet unclassified
myMenuWidget
	| myMenu |
	myMenu := (PRComponent named: 'myMenu')
		componentClass: LikeMindsMyMenuWidget;
		yourself.
	
	^myMenu