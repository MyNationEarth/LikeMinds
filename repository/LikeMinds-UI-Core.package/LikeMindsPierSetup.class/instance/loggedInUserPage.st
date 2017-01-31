as yet unclassified
loggedInUserPage
	^ loggedInUserPage ifNil: [
		loggedInUserPage := (PRPage named: 'loggedinuser') 
		addChild: ((PRComponent named: 'widget') componentClass: PUSecurityWidget; yourself);
		contents: '+value:user+ (+widget+)';
		yourself
	]