colour
colorOfClass: aClass 

	| size |
	size := aClass children size.
	^ self colorOfClass: aClass size: size