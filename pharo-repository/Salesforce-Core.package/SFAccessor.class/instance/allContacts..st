actions-contacts
allContacts: fields
	^ self retrieveObjectsByBlock: [ :offset | self selectObjectsFields: fields model: SFContact limit: self defaultRetrieveCount offset: offset ]
		for: self countContact
