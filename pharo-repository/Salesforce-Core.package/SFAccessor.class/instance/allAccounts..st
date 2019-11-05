actions-accounts
allAccounts: fields
	^ self retrieveObjectsByBlock: [ :offset | self selectObjectsFields: fields model: SFAccount limit: self defaultRetrieveCount offset: offset ]
		for: self countAccount
