descriptions
descriptionOtherPermissions
  <magritteDescription>
  ^ MAMultipleOptionDescription new
    accessor: #'otherPermissions';
    label: 'Other Permissions';
    componentClass: MACheckboxGroupComponent;
    priority: 420;
    options: [ LMPermissions allOtherPermissions ] magritteDynamicObject;
    reference: MAStringDescription new;
    yourself