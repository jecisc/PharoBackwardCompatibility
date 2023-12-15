Extension { #name : #ShiftClassBuilder }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> traits: aValue [
	"Added during the merge of FluidClassBuilder and ShiftClassBuilder"

	^ self traitComposition: aValue
]
