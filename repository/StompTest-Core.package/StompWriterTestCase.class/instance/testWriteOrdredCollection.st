tests
testWriteOrdredCollection
	"self debug: #testWriteOrdredCollection"
	| ord bytes |
	ord := OrderedCollection new.
	ord add: 10.
	ord add: 20.
	ord add: 30.
	bytes := ord toStomp.
	self should: [bytes =  self ordredCollectionAnswerBytes]
	
	
	
	