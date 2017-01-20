descriptions
descriptionId
  <magritteDescription>
  ^ MAToOneRelationDescription new
    classes: (Array with: UUID);
    accessor: #'id';
    label: 'Identifier';
    priority: 1;
    beReadonly;
    beHidden;
    yourself