tests
testWriteReadNewFailedClassReceiverAlternative
	"self debug: #testWriteReadNewFailedClassReceiverAlternative"
	| original stomp read |
	original := StompMockFixedNewFailedClass prototype1.
	self should: [original att1 = 1].
	self should: [original att2 =  'TWO']. 
	self should: [original toStomp] raise: StompInvalidSerialization.
	stomp := original toStomp.
	
	self should: [Object fromStomp: stomp] raise: StompNewFailed.
	read := [Object fromStomp: stomp] on: StompNewFailed do: [:ex | ex resume: StompMockFixedAlternativeClass].
	self should: [read class = StompMockFixedAlternativeClass].
	self should: [read att1 = 1].
	self should: [read att2 =  'TWO'].
	self should: [read att3Block notNil].
	
	
	
	