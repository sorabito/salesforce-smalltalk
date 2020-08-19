actions-accounts
accounts: fields where: where
	^ self retrieveObjectsByBlock: [ :offsetId | self selectObjectsFields: fields model: SFAccount where: where limit: self defaultRetrieveCount offsetId: offsetId ]