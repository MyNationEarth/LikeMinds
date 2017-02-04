as yet unclassified
withParent: parent
  | permissions |
  permissions := (parent respondsTo: #'permissions')
    ifTrue: [ parent permissions copy	"clearPermissions" ]
    ifFalse: [ LMPermissions new ].
  ^ super new
    parent: parent;
    permissions: permissions;
    yourself