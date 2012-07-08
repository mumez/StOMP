utilities
benchAll
	"self benchAll"
	Transcript cr; show: '**', self name, '**'.
	(StompBench class organization listAtCategoryNamed: #actions) do: [:each | self perform: each]