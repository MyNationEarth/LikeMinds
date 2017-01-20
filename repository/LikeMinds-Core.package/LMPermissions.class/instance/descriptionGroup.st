descriptions
descriptionGroup
  "TODO: Is LMGroup the right class for this?"

  <magritteDescription>
  ^ MAToOneRelationDescription new
    classes: (Array with: LMGroup);
    reference: MAClassDescription new;
    accessor: #'group';
    label: 'Group';
    priority: 210;
    yourself