Extension { #name : 'OpalCompiler' }

{ #category : '*PharoBackwardCompatibility-UpTo11' }
OpalCompiler >> permitUndeclared: aBoolean [
	"In Pharo 12, the compiler refuses the undeclared variables unless they are permitted. Before, they are always permitted, so there is nothing to do."
]
