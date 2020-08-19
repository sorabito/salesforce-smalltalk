actions-contacts
contacts: fields where: where
	^ self retrieveObjectsByBlock: [ :offsetId | self selectObjectsFields: fields model: SFContact where: where limit: self defaultRetrieveCount offsetId: offsetId ]