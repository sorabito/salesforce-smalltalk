actions
patchObject: object propertyKeys: propertyKeys
	| url props |
	url := self updateObjectUrlFor: object.
	props := {  } asDictionary.
	propertyKeys do: [ :each | 
		props at: each  put: (object at: each)
	]. 
	^ self httpPatch: url contents: (ZnEntity json: (NeoJSONWriter toString: props))