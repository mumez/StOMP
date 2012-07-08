examples
example1
	"self example1"
	| req1 req2 person1 person2 |
	req1 := StompMockRequest new.
	req1 id: 1.
	req2 := StompMockRequest new.	
	req2 id: 2.
	person1 := StompMockPerson new name: 'A'.
	person1 requests: (Array with: req1 with: req2).
	person2 := StompMockPerson new name: 'B'.
	person2 partners: (Array with: person1).
	req1 owner: person1.
	req2 owner: person2.
	^person1
	