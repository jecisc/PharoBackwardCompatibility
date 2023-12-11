Extension { #name : #Class }

{ #category : #'*PharoBackwardCompatibility-UpTo12' }
Class >> packageTag [

	^ self package classTagForClass: self
]
