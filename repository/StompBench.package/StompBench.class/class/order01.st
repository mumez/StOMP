factories
order01
	| items order |
	items := Dictionary new.
	items at: (StompMockOrderItem new id: 123 ; title: 'foofoofoo'; price: 2980) put: 2.
	items at: (StompMockOrderItem new id: 456 ; title: 'barbarbar'; price: 1980) put: 1.
	items at: (StompMockOrderItem new id: 789 ; title: 'bazbazbaz'; price: 5980) put: 1.
	
	order := StompMockOrder new.
	order items: 12345678901234567890.
	order items: items.
	
	^order