descriptions
descriptionOwnerPermissions
  <magritteDescription>
  ^ MAMultipleOptionDescription new
    accessor: #'ownerPermissions';
    label: 'Owner Permissions';
    componentClass: MACheckboxGroupComponent;
    priority: 400;
    options: [ LMPermissions allOwnerPermissions ] magritteDynamicObject;
    reference: MAStringDescription new;
    yourself