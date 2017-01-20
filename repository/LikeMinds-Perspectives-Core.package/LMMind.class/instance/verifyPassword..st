Updating
verifyPassword: candidatePassword
	^(SecureHashAlgorithm new hashMessage: candidatePassword) = password