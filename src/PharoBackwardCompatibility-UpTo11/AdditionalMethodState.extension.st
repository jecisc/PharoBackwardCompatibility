Extension { #name : 'AdditionalMethodState' }

{ #category : '*PharoBackwardCompatibility-UpTo11' }
AdditionalMethodState class >> propertiesToPersist [
	"In Pharo 12, the properties to persist are copied from the old version of a method to the new one when a method is recompiled. Before, no property is kept."

	^ #(  )
]
