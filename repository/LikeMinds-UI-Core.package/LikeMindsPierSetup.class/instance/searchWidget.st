as yet unclassified
searchWidget
	^ searchWidget ifNil: [
		searchWidget := (PRComponent named: 'search')
		componentClass: PRAjaxSearchWidget;
		write: ( PRStructure withAllConcreteClasses reject: [:each | each = PRPage or: [each = PBPost]] ) using: PRAjaxSearchWidget descriptionFilter ;
		yourself
	].