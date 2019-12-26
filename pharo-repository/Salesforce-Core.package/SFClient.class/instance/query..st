actions
query: aQueryString
	| url response retryCount |
	url := ''.
	url := self queryUri.
	url queryAt: 'q' put: aQueryString.
	retryCount := 0.
	response := (self httpGet: url).
	[ ((response statusLine code) = 401) and: [ retryCount < self defaultRetryLimit ] ] whileTrue: [
		self login.
		response := (self httpGet: url).
		retryCount := retryCount + 1.
	].

	^self readFromResponse: response