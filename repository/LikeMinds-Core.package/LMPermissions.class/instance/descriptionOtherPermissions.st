descriptions
descriptionOtherPermissions
  <magritteDescription>
  ^ MAMultipleOptionDescription new
    accessor: #'otherPermissions';
    label: 'Other Permissions';
    componentClass: MACheckboxGroupComponent;
    priority: 420;
    options: [ LikeMindsPermissions allOtherPermissions ] magritteDynamicObject;
    reference: MAStringDescription new;
    yourself