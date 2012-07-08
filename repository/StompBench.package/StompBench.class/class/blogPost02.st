factories
blogPost02
	"self blogPost02"
	| posts post |
	posts := OrderedCollection new.
	1 to: 20 do: [:idx |
		posts add: (self blogPost01 id: idx printString)
	].
	1 to: 5 do: [:idx |
		post := posts at: idx.
		post attachments: (Array with: StompMockAttachment attachment1 with: StompMockAttachment attachment2).
		post modifiedDate: (StompPortableUtil default timestampFromNanoseconds: 3465089051421000000).
		post comments: (Array with: self protoBlogComment with: self protoBlogComment).
	].

	^posts
	