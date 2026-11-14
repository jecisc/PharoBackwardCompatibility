Extension { #name : 'CompiledCode' }

{ #category : '*PharoBackwardCompatibility-UpTo11' }
CompiledCode class >> basicNew: numberOfBytes header: headerWord [
	"Answer an instance of me with the given number of bytes and header. In Pharo 12 it replaces #newMethod:header:, which uses the same primitive."

	^ self newMethod: numberOfBytes header: headerWord
]
