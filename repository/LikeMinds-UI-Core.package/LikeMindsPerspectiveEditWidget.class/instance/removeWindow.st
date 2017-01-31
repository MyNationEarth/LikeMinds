as yet unclassified
removeWindow
	^((SUWindow on: [:w | SUDialogTest new
		answer: [:script | 
			script alert: 'Window will be closed'. 
			script add: (JSStream on: '$("overlay").hide()').
			w closeOn: script
		];
		yourself]) 
		id: 'dialog_window';
		closeButtonEnabled: false;
		minimizeButtonEnabled: false;
		zIndex: 9999;
		title: 'Confirm Remove Perspective';
		yourself).