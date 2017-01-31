colour
colorOfClass: menu size: size

	| saturation hue |
	hue := 85 / 360.
	^ size > 0 
		ifTrue: 
		[	
			self colorHue: hue saturation: 0.95 brightness: 0.7
		]
		ifFalse: [ self colorHue: hue saturation: 0.95 brightness: 0.4 ]