web kernel
webKernel
	| application |
	"Answer the deployed LikeMindsPierKernel associated with this system or nil"
	^self propertyAt: #webKernel ifAbsentPut: [
		(application := self webFrames values detect: 
			[:app | (app preferenceAt: #likeMindsSystem) == self])
				 preferenceAt: #kernel
	].