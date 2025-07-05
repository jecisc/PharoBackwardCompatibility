Extension { #name : #ClassDescription }

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