descriptions
descriptionGroupPermissions
  <magritteDescription>
  ^ MAMultipleOptionDescription new
    accessor: #'groupPermissions';
    label: 'Group Permissions';
    componentClass: MACheckboxGroupComponent;
    priority: 410;
    options: [ LMPermissions allGroupPermissions ] magritteDynamicObject;
    reference: MAStringDescription new;
    yourself