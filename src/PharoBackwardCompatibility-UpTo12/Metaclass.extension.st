Extension { #name : #Metaclass }

{ #category : #'*PharoBackwardCompatibility-UpTo12' }
Metaclass >> packageTag [

	^ self instanceSide packageTag
]
