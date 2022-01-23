'From Cuis 6.0 [latest update: #5045] on 23 January 2022 at 7:02:15 pm'!
!classDefinition: #MyObserverNumber category: #NicolaPackage!
Object subclass: #MyObserverNumber
	instanceVariableNames: 'value model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NicolaPackage'!

!MyObserverNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:28:30'!
initializeWithModel: anObject
	value _ 0.
	model _ anObject . 
	model when: #iChanged send: #update  to: self .  
	^ self ! !

!MyObserverNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:29:39'!
update
	|vPar vMe |
	 vPar _ model value. 
	 vMe _ vPar * 2.
	 value _ vMe.
	 Transcript show: ('my MODEL value is:{1} and mine is value:{2}' format: {vPar. vMe} ).  
	! !

!MyObserverNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:20:33'!
value
	^ value 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MyObserverNumber class' category: #NicolaPackage!
MyObserverNumber class
	instanceVariableNames: ''!

!MyObserverNumber class methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:28:41'!
newWithModel: anObject
	^ super new initializeWithModel: anObject! !
