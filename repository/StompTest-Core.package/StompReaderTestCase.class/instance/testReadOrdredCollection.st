tests
testReadOrdredCollection
	"self debug: #testReadOrdredCollection"
	| ord |
	ord := OrderedCollection new.
	ord add: 10.
	ord add: 20.
	ord add: 30.
	
	self should: [(Object fromStomp:(self ordredCollectionAnswerBytes)) = ord]
	