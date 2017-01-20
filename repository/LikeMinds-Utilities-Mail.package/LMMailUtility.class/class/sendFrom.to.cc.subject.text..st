Sending Mail
sendFrom: aMailAddressFrom to: aMailAddress cc: otherMailAddresses subject: aSubjectString text: aText 
	| newMail |
	newMail := self new.
	newMail
		from: aMailAddressFrom; 
		to: aMailAddress;
		cc: otherMailAddresses;
		subject: aSubjectString;
		text: aText.
	^newMail send