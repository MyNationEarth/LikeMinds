descriptions
descriptionPermissions
  <magritteDescription>
  ^ MAToOneRelationDescription new
    accessor: #'permissions';
    classes: (Array with: LMPermissions);
    label: 'Permissions';
    priority: 400;
    beRequired;
    yourself