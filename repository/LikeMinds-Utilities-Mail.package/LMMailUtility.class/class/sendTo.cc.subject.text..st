Sending Mail
sendTo: aMailAddress cc: otherMailAddresses subject: aSubjectString text: aText
	| newMail |
	newMail := self new.
	newMail
		to: aMailAddress;
		cc: otherMailAddresses;
		subject: aSubjectString;
		text: aText.
	^newMail send