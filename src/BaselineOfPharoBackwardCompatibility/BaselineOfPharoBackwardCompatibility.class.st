"
I am a baseline to define the structure and dependencies of the PharoBackwardCompatibility project.
"
Class {
	#name : 'BaselineOfPharoBackwardCompatibility',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfPharoBackwardCompatibility',
	#package : 'BaselineOfPharoBackwardCompatibility'
}

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec
				package: 'PharoBackwardCompatibility-Tests';
				postLoadDoIt: #postLoad ].

	spec for: (self pharoVersionsUpTo: 6) do: [ spec package: 'PharoBackwardCompatibility-UpTo6' ].

	spec for: (self pharoVersionsUpTo: 7) do: [ spec package: 'PharoBackwardCompatibility-UpTo7' ].

	spec for: (self pharoVersionsUpTo: 8) do: [ spec package: 'PharoBackwardCompatibility-UpTo8' ].

	spec for: (self pharoVersionsUpTo: 11) do: [ spec package: 'PharoBackwardCompatibility-UpTo11' ].

	spec for: #'pharo12.x' do: [ spec package: 'PharoBackwardCompatibility-12' ].

	spec for: (self pharoVersionsUpTo: 12) do: [ spec package: 'PharoBackwardCompatibility-UpTo12' ].

	spec for: (self pharoVersionsUpTo: 13) do: [ spec package: 'PharoBackwardCompatibility-UpTo13' ]
]

{ #category : 'baselines' }
BaselineOfPharoBackwardCompatibility >> isPharoVersion: aVersion [

	^ SystemVersion current major = aVersion
]

{ #category : 'baselines' }
BaselineOfPharoBackwardCompatibility >> isPharoVersionUpTo: aVersion [

	^ SystemVersion current major <= aVersion
]

{ #category : 'baselines' }
BaselineOfPharoBackwardCompatibility >> pharoVersionsUpTo: aVersion [

	^ (self isPharoVersionUpTo: aVersion)
		  ifTrue: [ { ('pharo' , SystemVersion current major asString , '.x') } ]
		  ifFalse: [ #(  ) ]
]

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> postLoad [

	(self isPharoVersion: 12) ifTrue: [ self postLoadOnPharo12 ].
	(self isPharoVersionUpTo: 12) ifTrue: [ self postLoadUpTo12 ].
	(self isPharoVersionUpTo: 13) ifTrue: [ self postLoadUpTo13 ]
]

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> postLoadOnPharo12 [

	self class environment at: #OCSyntaxErrorNotice put: (self class environment at: #RBSyntaxErrorNotice)
]

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> postLoadUpTo12 [

	self class environment
		at: #RePullUpInstanceVariableRefactoring
		put: (self class environment at: #RBPullUpInstanceVariableRefactoring)
]

{ #category : 'baseline' }
BaselineOfPharoBackwardCompatibility >> postLoadUpTo13 [

	self class environment at: #ReChangeManager put: (self class environment at: #RBRefactoryChangeManager).
  
  self class environment at: #IceBranchAlreadyExists ifPresent: [ :class | self class environment at: #IceBranchAlreadyExistsError put: class ]
]

{ #category : 'accessing' }
BaselineOfPharoBackwardCompatibility >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]
