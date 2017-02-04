as yet unclassified
buildPerspectiveComponent
  ^ self components
    at: #'perspective'
    put:
      ((LMPerspective description asComponentOn: self perspective)
        addValidatedForm;
        yourself)