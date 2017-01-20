email
mailHostsForEmailAddress: emailAddress
	"I answer an array of mail hosts that handle mail for the supplied address"
	| domain stream mailHosts |
	domain := emailAddress copyFrom: (emailAddress indexOf: $@) + 1 to: emailAddress size.
	stream := ReadStream on: (System performOnServer: 'dig +short -tmx ', domain) asArrayOfSubstrings.
	mailHosts := IntegerKeyValueDictionary new.
	[stream atEnd] whileFalse: [mailHosts at: (stream next asInteger) put: stream next].
	^mailHosts