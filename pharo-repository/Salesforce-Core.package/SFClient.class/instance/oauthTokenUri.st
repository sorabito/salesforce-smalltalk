private-uri
oauthTokenUri
	| subdomain |
	subdomain := self settings isSandbox ifTrue: [ 'test' ] ifFalse: [ 'login' ].
	^ ('https://{1}.salesforce.com/services/oauth2/token' format: { subdomain }) asUrl
