'From Cuis 6.0 [latest update: #5045] on 22 January 2022 at 8:29:59 pm'!
!classDefinition: #MyParentNumber category: #NicolaPackage!
Object subclass: #MyParentNumber
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NicolaPackage'!

!MyParentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 18:30:21'!
initialize
	value _ 0. 
	^ self 
	! !

!MyParentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:37:45'!
value
	^ value ! !

!MyParentNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/22/2022 19:58:45'!
value: aNumber
	value _ aNumber.
	self changed: #iChanged. ! !
