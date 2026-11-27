Extension { #name : 'OpalCompiler' }

{ #category : '*PharoBackwardCompatibility-UpTo12' }
OpalCompiler >> compiledBlockClass: aClass [
	"In Pharo 13, the compiler looks up the class of the compiled blocks in its environment unless it is given one. Before, it always uses CompiledBlock, so there is nothing to do."
]
