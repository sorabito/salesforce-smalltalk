actions-contacts
allContacts: contactFields withAccount: accountFields
	^ self retrieveObjectsByBlock: [ :offset | self selectModel: SFContact fields: contactFields nestedModel: SFAccount nestedFields: accountFields limit: self defaultRetrieveCount offset: offset ]
		for: self countContact
