'From Cuis 6.0 [latest update: #5045] on 23 January 2022 at 7:02:55 pm'!
!classDefinition: #MyActiveNumber category: #NicolaPackage!
ActiveModel subclass: #MyActiveNumber
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NicolaPackage'!

!MyActiveNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:13:29'!
initialize
	value _ 0. 
	^ self 
	! !

!MyActiveNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:13:39'!
value
	^ value ! !

!MyActiveNumber methodsFor: 'as yet unclassified' stamp: 'NM 1/23/2022 18:15:31'!
value: aNumber
	value _ aNumber.
	self triggerEvent: #iChanged
	! !
