class initialization
initTupleTags
	"self initTupleTags"
	tupleTags := Set new.
	tupleTags add: self value.
	tupleTags add: self reference.
	tupleTags add: self byteString.
	tupleTags add: self byteSymbol.
	tupleTags add: self wideString.
	tupleTags add: self wideSymbol.