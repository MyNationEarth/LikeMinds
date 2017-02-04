as yet unclassified
descriptionChildren
  ^ MAToManyRelationDescription new
    accessor: #'children';
    classes: (Array with: LMPerspective);
    label: 'Children';
    priority: 400;
    beOrdered;
    beReadonly;
    beHidden;
    yourself