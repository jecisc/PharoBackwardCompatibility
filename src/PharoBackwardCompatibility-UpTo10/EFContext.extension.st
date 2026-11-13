Extension { #name : #EFContext }

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
EFContext >> numberOfNewLinesAfterMethodSignatureWithMethodComment [

	"The formatter of Pharo 10 puts the same number of new lines after the signature of every method."

	^ self numberOfNewLinesAfterMethodSignature
]

{ #category : #'*PharoBackwardCompatibility-UpTo10' }
EFContext >> numberOfNewLinesAfterMethodSignatureWithMethodComment: anInteger [

	"Pharo 11 lets a method with a comment have its own number of new lines after its signature. The formatter of Pharo 10 has one number for every method, so the setting is accepted and ignored."

	
]
