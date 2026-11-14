"
I install compiled methods in a class or a trait, with the API of the method installer of Pharo 14, which replaces #addAndClassifySelector:withMethod:inProtocol:.

I am answered by ClassDescription>>#methodInstaller.

Example:

	aClass methodInstaller
		protocol: #accessing;
		install: aCompiledMethod into: aClass compiler: nil

Unlike the method installer of Pharo 14, I never write the source code of the method in the changes file, so #logged: has no effect.
"
Class {
	#name : 'OCMethodInstaller',
	#superclass : 'Object',
	#instVars : [
		'protocol'
	],
	#category : 'PharoBackwardCompatibility-UpTo13-Methods',
	#package : 'PharoBackwardCompatibility-UpTo13',
	#tag : 'Methods'
}

{ #category : 'installing' }
OCMethodInstaller >> install: aCompiledMethod into: aBehavior compiler: aCompiler [
	"Install the method in the behavior, in my protocol, and answer it. The compiler is only used by Pharo 14 to log the source code."

	aBehavior addAndClassifySelector: aCompiledMethod selector withMethod: aCompiledMethod inProtocol: (protocol ifNil: [ Protocol unclassified ]).
	^ aCompiledMethod
]

{ #category : 'accessing' }
OCMethodInstaller >> logged: aBoolean [
	"In Pharo 14, tells whether the source code of the method is written in the changes file. I never write it."
]

{ #category : 'accessing' }
OCMethodInstaller >> protocol: aProtocolName [

	protocol := aProtocolName
]
