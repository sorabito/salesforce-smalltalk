actions-accounts
accounts: accountFields withContacts: contactFields where: where
	"
	Don't spesify Contact fields in WHERE clause because Account-Contact is not parent-to-child relationship (SOQL relationship queries limitation).
	"
	^ self retrieveObjectsByBlock: [ :offsetId | self selectModel: SFAccount fields: accountFields nestedModels: SFContact nestedFields: contactFields where: where limit: self defaultRetrieveCount offsetId: offsetId ]