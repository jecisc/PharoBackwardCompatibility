Extension { #name : #ClassDescription }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> packageName [

	^ self package ifNotNil: [ :package | package name ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> packageTagName [
	"Package tags are sub categories of packages to have a better organization of the packages. I return the name of my package tag."

	^ self packageTag name
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> protocolNamed: aString [
	"In Pharo11 when a protocol is asked, system return a symbol"

	"i.e.: 
			MethodModified 
				methodChangedFrom: previousMethodOrNil
				to: newMethod 
				oldProtocol: aProtocol <<= works with a symbol is P11
	"

	aString ifNil: [ NotFound signalFor: aString ].
	^ aString asSymbol
]
