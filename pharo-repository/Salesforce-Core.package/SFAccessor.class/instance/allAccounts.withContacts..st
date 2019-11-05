actions-accounts
allAccounts: accountFields withContacts: contactFields
	^ self retrieveObjectsByBlock: [ :offset | self selectModel: SFAccount fields: accountFields nestedModels: SFContact nestedFields: contactFields limit: self defaultRetrieveCount offset: offset ]
		for: self countAccount
