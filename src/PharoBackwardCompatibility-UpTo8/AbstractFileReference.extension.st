Extension { #name : #AbstractFileReference }

{ #category : #'*PharoBackwardCompatibility-UpTo8' }
AbstractFileReference >> ifAbsent: aBlock [
	"Return self, or evaluate the block if I do not exist"

	^ self exists ifTrue: [ self ] ifFalse: [ aBlock cull: self ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo8' }
AbstractFileReference >> ifExists: aBlock [
	"Evaluate the block, unless I do not exist. If the receiver exists, pass it as argument to the block."

	^ self exists ifTrue: [ aBlock cull: self ] ifFalse: [ self ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo8' }
AbstractFileReference >> ifExists: aBlock ifAbsent: anotherBlock [
	"If the receiver exists, pass it as argument to aBlock. Else execute anotherBlock "

	^ self exists ifTrue: [ aBlock cull: self ] ifFalse: [ anotherBlock cull: self ]
]
