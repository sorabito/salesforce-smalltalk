actions-contacts
allContacts: fields
	^ self retrieveObjectsByBlock: [ :offsetId | self selectObjectsFields: fields model: SFContact limit: self defaultRetrieveCount offsetId: offsetId ]
