as yet unclassified
renderBodyOn: html
	html paragraph with: [ 
		html text: 'You are about to remove the '.
		html strong: perspective displayName.
		html text: ' perspective. There '.
		perspective members size == 1
			ifTrue: [html text: 'is 1 member ']
			ifFalse: [html text: 'are ' + perspective members size asString + ' members '].
		html text: 'in this perspective. All information will be deleted and can not be recovered.'
	].
	html paragraph with: [html strong: 'Are you sure you want to continue?'].