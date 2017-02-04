as yet unclassified
_descriptionMembers
  ^ MAToManyRelationDescription new
    accessor: #'members';
    label: 'Members';
    classes: {LMMind};
    default: RcIdentityBag new;
    priority: 200;
    yourself