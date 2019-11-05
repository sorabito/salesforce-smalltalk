actions-contacts
contacts: fields where: where
	^ self retrieveObjectsByBlock: [ :offset | self selectObjectsFields: fields model: SFContact where: where limit: self defaultRetrieveCount offset: offset ]
		for: (self countContactWhere: where)