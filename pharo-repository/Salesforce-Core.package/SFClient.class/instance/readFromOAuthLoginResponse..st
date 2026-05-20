private
readFromOAuthLoginResponse: response
	| json instanceUrl |
	response isSuccess ifFalse: [
		Error signal: 'OAuth login failed: ' , response statusLine asString ].
	json := NeoJSONReader fromString: response entity string.
	self settings sessionId: (json at: 'access_token').
	instanceUrl := json at: 'instance_url'.
	self settings instanceName: ((ZnUrl fromString: instanceUrl) host findTokens: '.') first.
	^ json
