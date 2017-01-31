as yet unclassified
loginCommandWidget
	^ loginCommandWidget ifNil: [
		loginCommandWidget := (PRComponent named: 'loginLogoutCommand')
		title: 'Just Login Command';
		componentClass: PRCommandsWidget;
		write: (Array with: PULogin with: PULogout) using: PRCommandsWidget descriptionCommandClasses ;
		yourself
	]