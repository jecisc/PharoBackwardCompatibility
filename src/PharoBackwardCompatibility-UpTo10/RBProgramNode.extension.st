Extension { #name : #RBProgramNode }

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
RBProgramNode >> formattedCodeIn: context [

	^ context formatter format: self
]
