actions-accounts
allAccounts: accountFields withContacts: contactFields
	^ self retrieveObjectsByBlock: [ :offsetId | self selectModel: SFAccount fields: accountFields nestedModels: SFContact nestedFields: contactFields limit: self defaultRetrieveCount offsetId: offsetId ]