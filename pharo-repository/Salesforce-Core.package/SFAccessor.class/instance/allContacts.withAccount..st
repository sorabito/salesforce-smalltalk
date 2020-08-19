actions-contacts
allContacts: contactFields withAccount: accountFields
	^ self retrieveObjectsByBlock: [ :offsetId | self selectModel: SFContact fields: contactFields nestedModel: SFAccount nestedFields: accountFields limit: self defaultRetrieveCount offsetId: offsetId ]
