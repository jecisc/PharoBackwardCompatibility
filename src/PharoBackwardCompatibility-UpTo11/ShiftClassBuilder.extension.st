Extension { #name : #ShiftClassBuilder }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> tag: aString [

	aString ifNil: [ ^ self ].
	self category: (self category
			 ifNil: [ aString ]
			 ifNotNil: [ :cat | cat , '-' , aString ])
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ShiftClassBuilder >> traits: aValue [
	"Added during the merge of FluidClassBuilder and ShiftClassBuilder"

	^ self traitComposition: aValue
]
