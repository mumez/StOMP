actions
bytes: rawBytes intoOf: bitsClass
	"override"
	| inst |
	bitsClass isWords ifTrue: [ | hackBlt |
		inst := bitsClass basicNew: rawBytes size / 4.
		hackBlt := (BitBlt toForm: (Form new hackBits: inst))
				sourceForm: (Form new hackBits: rawBytes);
				width: 4; height: inst size; combinationRule: 3. "Form over"
		Smalltalk isLittleEndian ifTrue: [hackBlt sourceForm swapEndianness].
		hackBlt copyBits.				
		^inst
	] ifFalse:[
		inst := bitsClass new: rawBytes size.
		inst replaceFrom: 1 to: inst size with: rawBytes startingAt: 1.
		^inst
	].
	