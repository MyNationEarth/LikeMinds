Updating
password: newValue
	"Store passwords as a secure hash"
	password := SecureHashAlgorithm new hashMessage: newValue