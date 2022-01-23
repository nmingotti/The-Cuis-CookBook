'From Cuis 6.0 [latest update: #5045] on 22 January 2022 at 8:29:52 pm'!
!classDefinition: #MyDependentNumber category: #NicolaPackage!
Object subclass: #MyDependentNumber
	instanceVariableNames: 'value parent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NicolaPackage'!

!MyDependentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:33:28'!
initializeWithParent: anObject
	value _ 0.
	anObject addDependent: self.
	parent _ anObject . 
	^ self ! !

!MyDependentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:57:14'!
update: aParam
	|vPar vMe |
	 vPar _ parent value. 
	 vMe _ vPar * 2.
	 value _ vMe.
	 Transcript show: ('my parent value is:{1} and mine is value:{2}' format: {vPar. vMe} ).  
	! !

!MyDependentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:37:54'!
value
	^ value ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MyDependentNumber class' category: #NicolaPackage!
MyDependentNumber class
	instanceVariableNames: ''!

!MyDependentNumber class methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:28:11'!
newWithParent: anObject
	^ super new initializeWithParent: anObject! !
