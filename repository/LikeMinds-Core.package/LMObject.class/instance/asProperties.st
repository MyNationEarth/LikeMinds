transport protocol
asProperties
  | props value |
  "Convert string inst vars to properties, and Like Minds object properties to UUID's and OOP's"
  props := Dictionary new.
  props at: 'selfOop' put: self asOop asString.
  (self isKindOf: LMIdentifiableObject)
    ifTrue: [ props at: 'selfId' put: self id asString ].
  self class instVarNames
    do: [ :instVar | 
      (#(#'password') includes: instVar)
        ifFalse: [ 
          value := self instVarNamed: instVar.
          (#(#'String' #'Number' #'DateAndTime')
            includes: value className asSymbol)
            ifTrue: [ props at: instVar put: value asString ].
          (value isKindOf: LMIdentifiableObject)
            ifTrue: [ props at: instVar put: value id asString ] ] ].
  ^ props