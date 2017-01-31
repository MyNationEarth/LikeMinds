as yet unclassified
updateVariables
	commsId ifNil: [
		commsId := self context requestContext request queryFields keys 
			detect: [:a | true] 
			ifNone: [nil]
	].

	mind ifNil: [
		commsId size == 36 and: [mind := self system findMindWithCommsId: (UUID fromString: commsId)]
	].