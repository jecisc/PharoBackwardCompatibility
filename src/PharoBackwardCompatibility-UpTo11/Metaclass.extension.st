Extension { #name : #Metaclass }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Metaclass >> packageTag [

	^ self instanceSide packageTag
]
