as yet unclassified
renderConfirmationFormOn: html
html form with: [
	html paragraph with: [
		html paragraph: 'Welcome to Like Minds. You have been directed to this page because you (or someone else) registered the email address ' + mind email asString + ' for free membership with the Like Minds Community.'.
		html heading
			level2;
			with: 'I do not know what this is about.'.
		html paragraph with: [
			html text: 'If you received the email in error, or do not want a free membership with Like Minds, click the following button.'.
			html break.
			html button 
				callback: [self removeMind];
				with: 'This is a Mistake - Remove my Membership'.
		].
		html heading
			level2;
			with: 'Thank you, I would like to confirm.'.		
		html paragraph with: [
			html text: 'If you did request a free Like Minds Membership, and wish to confirm your membership so you have access to all the features of the Like Minds System, click the following button.'.
			html break.
			html checkbox
				callback: [:value | ].
			html text: 'I have Read and Agree to the Like Minds Terms & Conditions'.
			html break.
			html button
				callback: [self confirmMind];
				with: 'Confirm My Membership'.
		].
	].
]