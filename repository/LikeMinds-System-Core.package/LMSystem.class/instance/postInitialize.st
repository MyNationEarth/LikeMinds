bootstrap
postInitialize
  | permissions mind |
  "Install The Web Site"
  LikeMindsPierSetup install.	"Find the first web frame with no likeMindsSystem set"
  (self webFrames
    detect: [ :app | (app preferenceAt: #'likeMindsSystem') == nil ])
    preferenceAt: #'likeMindsSystem'
    put: self.	"Provide the web kernel with a default set of permissions for handling events"
  (permissions := self permissions copy)
    clearOwnerPermissions;
    setOwnerPermission: #'enableWebAccess';
    setOwnerPermission: #'disableWebAccess'.
  self webKernel permissions: permissions.	"Enable Web Access for root"
  (self enableWebAccessForMind: self administrator owner: self administrator)
    superuser: true.	"Setup and account for Jupiter"
  mind := self newMindWithEmail: 'jupiter.jones@mail.com' password: 'test'.
  self enableWebAccessForMind: mind owner: self administrator