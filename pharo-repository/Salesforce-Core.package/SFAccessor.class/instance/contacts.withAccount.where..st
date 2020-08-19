actions-contacts
contacts: contactFields withAccount: accountFields where: where
	^ self retrieveObjectsByBlock: [ :offsetId | self selectModel: SFContact fields: contactFields nestedModel: SFAccount nestedFields: accountFields where: where limit: self defaultRetrieveCount offsetId: offsetId ]