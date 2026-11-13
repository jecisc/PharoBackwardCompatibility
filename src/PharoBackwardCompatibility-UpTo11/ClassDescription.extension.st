Extension { #name : #ClassDescription }

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> packageName [

	^ self package ifNotNil: [ :package | package name ]
]

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> packageTagName [
	"Package tags are sub categories of packages to have a better organization of the packages. I return the name of my package tag. Pharo 12 names the tag of a class that has none Uncategorized; before it, that tag is named after the package."

	| tagName |
	tagName := self packageTag name.
	^ tagName = self packageName
		  ifTrue: [ #Uncategorized ]
		  ifFalse: [ tagName ]
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

{ #category : #'*PharoBackwardCompatibility-UpTo11' }
ClassDescription >> whichMethodsAccess: instVarName [
	"Answer the methods that access the argument, instVarName, as a named instance variable. Pay attention the instVarName variable should be used e.g., be part of a return, message send or assignment else the compiler optimize it away and the method will not return it."

	^ self
		  slotNamed: instVarName
		  ifFound: [ :slot |
		  self methods select: [ :m | slot isAccessedIn: m ] ]
		  ifNone: [ #(  ) ]
]
