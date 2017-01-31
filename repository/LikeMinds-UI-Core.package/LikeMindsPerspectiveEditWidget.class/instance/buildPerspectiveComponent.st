as yet unclassified
buildPerspectiveComponent
	^self components at: #perspective put: 
		((LikeMindsPerspective description asComponentOn: self perspective)
			addValidatedForm;
			yourself)