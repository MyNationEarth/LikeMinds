as yet unclassified
printOn: aStream
  aStream nextPutAll: self class name asString.
  aStream nextPut: $[.
  self asOop printOn: aStream.
  aStream nextPut: $].
  aStream nextPutAll: ' key:'.
  aStream
    nextPutAll:
      (LMSystem systems keyAtValue: self ifAbsent: [ '<NotInSystems>' ])