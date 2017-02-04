as yet unclassified
execute
  "Modify a Perspective with the supplied fields
	target: parent to add new perspective to"

  | perspective |
  self checkPermission: #'addMembers'.
  (perspective := LMPerspective withParent: target) owner: self owner.
  self modifyGroup: perspective.
  (target isKindOf: LMPerspective)
    ifTrue: [ target children add: perspective ]
    ifFalse: [ target perspective: perspective	"Should only be for bootstrapping so this is nasty" ].
  perspective events add: self.
  ^ perspective