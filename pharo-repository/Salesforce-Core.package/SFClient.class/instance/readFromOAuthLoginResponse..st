private
readFromOAuthLoginResponse: response
	| json instanceUrl |
	json := self readFromResponse: response.
	self settings sessionId: (json at: 'access_token').
	instanceUrl := json at: 'instance_url'.
	self settings instanceName: ((ZnUrl fromString: instanceUrl) host findTokens: '.') first.
	^ json
