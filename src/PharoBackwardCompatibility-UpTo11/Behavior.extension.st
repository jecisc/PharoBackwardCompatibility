Extension { #name : #Behavior }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Behavior >> includesTrait: aTrait [

	^ false
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Behavior >> packageOrganizer [

	^ self environment organization
]
