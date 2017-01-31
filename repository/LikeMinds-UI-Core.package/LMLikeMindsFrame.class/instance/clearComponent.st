as yet unclassified
clearComponent
	(self context includesKey: #component) ifTrue: [
		self context removeKey: #component
	].
	(self context includesKey: #fieldsEditor) ifTrue: [
		self context removeKey: #fieldsEditor
	]