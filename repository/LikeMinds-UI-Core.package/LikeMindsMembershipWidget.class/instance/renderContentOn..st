as yet unclassified
renderContentOn: html

	self updateVariables.
	createResult == #Created
		ifFalse: [
			html paragraph: 'Like Minds is free to browse, and for the most part, free to use. As more complex perspectives are released it is likely that some of them will be made available via a subscription. The idea development application, for example, is not only a fully fledged process automator, but also a project manager. Software claiming to perform these tasks is often very expensive and simply not available to any but the largest corporations. Like Minds intends to offer the same abilities of these US$100K+ systems under an affordable and liberal subscription model.'.
			html paragraph: 'Most, if not all, social networks will remain free of charge for members.'.
			html paragraph: 'Joining Like Minds is as simple as entering a valid email address and choosing a password.'.
			self context isLoggedIn 
				ifFalse: [self renderNewUserOn: html]
				ifTrue: [self renderAlreadyLoggedInOn: html]
		] ifTrue: [
			html paragraph: 'Your membership has been setup. A confirmation email has been sent to ' + emailAddress + ' with a link to confirm your membership. Once you have confirmed your membership, you will be able to login to this web site by clicking "Login" at the top of the page.'.
			html paragraph: 'Thanks for your interest in Like Minds.'.
			self clearVariables.
		]