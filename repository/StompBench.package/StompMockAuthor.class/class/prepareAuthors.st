preparing
prepareAuthors
	authors := Dictionary new.
	authors at: #ume put: (self new id: 1; firstName: 'Masashi'; surname: 'Umezawa'; nickname: 'mu').
	authors at: #yama put: (self new id: 2; firstName: 'Yamada'; surname: 'Taro'; nickname: 'dokaben').
	^authors