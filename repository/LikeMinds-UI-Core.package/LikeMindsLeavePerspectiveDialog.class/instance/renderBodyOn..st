as yet unclassified
renderBodyOn: html
	html paragraph with: [ 
		html text: 'You are about to leave the '.
		html strong: perspective displayName.
		html text: ' perspective. All the information you have entered for this perspective will be deleted and can not be recovered.'
	].
	html paragraph with: [html strong: 'Are you sure you want to continue?'].