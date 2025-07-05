Extension { #name : #Class }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
Class >> packageTag [

	^ self package classTagForClass: self
]
