actions-accounts
accounts: fields where: where
	^ self retrieveObjectsByBlock: [ :offset | self selectObjectsFields: fields model: SFAccount where: where limit: self defaultRetrieveCount offset: offset ]
		for: (self countAccountWhere: where)
