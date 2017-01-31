as yet unclassified
newMindAction
	| commsId |
	"Add a new mind to the system."
	(mind := self system findMindWithEmail: emailAddress)
	ifNotNil: [createResult := #Exists]
	ifNil: [
		"Create Account"
		[
			mind := self system newMindWithEmail: emailAddress password: password.
			createResult := #Created
		]	on: Error
			do: [:ex |
				"Errors - Invalid Email Expection will be thrown"
				createResult := #InvalidEmail.
			].
	]