as yet unclassified
kernel
	^ kernel ifNil: [
		kernel := LikeMindsPierKernel named: self applicationName.
		kernel root: self root.
		kernel
	]