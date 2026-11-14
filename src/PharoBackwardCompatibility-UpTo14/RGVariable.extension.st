Extension { #name : 'RGVariable' }

{ #category : '*PharoBackwardCompatibility-UpTo14' }
RGVariable >> isSelfOrSuperVariable [

	^ self isSelfVariable or: [ self isSuperVariable ]
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
RGVariable >> isSelfVariable [
	"Ring2 does not model self, super, thisContext, thisProcess"

	^ false
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
RGVariable >> isThisContextVariable [
	"Ring2 does not model self, super, thisContext, thisProcess"

	^ false
]

{ #category : '*PharoBackwardCompatibility-UpTo14' }
RGVariable >> isThisProcessVariable [
	"Ring2 does not model self, super, thisContext, thisProcess"

	^ false
]
