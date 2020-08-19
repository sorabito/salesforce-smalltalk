actions-accounts
allAccounts: fields
	^ self retrieveObjectsByBlock: [ :offsetId | self selectObjectsFields: fields model: SFAccount limit: self defaultRetrieveCount offsetId: offsetId ]