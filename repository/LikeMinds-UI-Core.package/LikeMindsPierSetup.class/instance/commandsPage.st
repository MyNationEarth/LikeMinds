as yet unclassified
commandsPage
	^ commandsPage ifNil: [
		commandsPage := (PRPage named: 'commands') 
		addChild: ((PRComponent named: 'widget') componentClass: PRCommandsWidget; yourself);
		contents: 'Commands: +widget+';
		yourself
	]