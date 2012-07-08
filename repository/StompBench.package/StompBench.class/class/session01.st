factories
session01
	| session properties |
	session := StompMockSession new id: 'd21d3f1a-0a21-054a-b106-93fa445b337c'.
	session expires: 60 seconds.
	properties := Dictionary new.
	properties at: 'url' put: 'http://somehost.com:9090/someService/some/'.
	properties at: 'token' put: 'someToken'.
	properties at: '_k' put: 'c20036b7-12a0-b446-a1ac-280a4dc102bc'.
	session properties: properties.
	^session