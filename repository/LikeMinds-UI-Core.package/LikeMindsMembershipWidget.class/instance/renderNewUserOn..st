as yet unclassified
renderNewUserOn: html

	html form with: [
		html strong: 'Email Address'.
		html textInput
			size: 30;
			callback: [:value | emailAddress := value].
		createResult == #Exists ifTrue: [
			html paragraph: 'There is an existing membership for the supplied email address. If you have forgotten the password, enter your membership email address and click the "Forgot Password" button to have your password reset and emailed to you.'
		].
		createResult == #InvalidEmail ifTrue: [
			html paragraph: 'The supplied email address can not be reached. Enter a valid email address and try again.'
		].
		html strong: 'Password'.
		html passwordInput
			size: 20;
			maxLength: 20;
			callback: [:value | password := value].
		html submitButton
			callback: [self sendPasswordAction];
			with: 'Forgot Password?'.
		html submitButton
			callback: [self newMindAction];
			with: 'Join Like Minds'
	]