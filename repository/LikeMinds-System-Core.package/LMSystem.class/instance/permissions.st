bootstrap
permissions
  "Return a dummy permissions for bootstrapping."

  ^ LMPermissions new
    owner: self administrator;
    setOwnerPermission: #'joinGroup';
    setOwnerPermission: #'addMembers';
    setOwnerPermission: #'createPerspective';
    setOwnerPermission: #'removeGroup';
    yourself