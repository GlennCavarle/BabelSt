Class {
	#name : #BabelStdDate,
	#superclass : #BabelStdClass,
	#instVars : [
		'date'
	],
	#category : 'BabelSt-StdClass'
}

{ #category : #'as yet unclassified' }
BabelStdDate >> getDate [
	^ date  dayOfMonth
]

{ #category : #'as yet unclassified' }
BabelStdDate >> getDay [
	^ date  dayOfWeek
]

{ #category : #'as yet unclassified' }
BabelStdDate >> getFullYear [
	^ date  year 
]

{ #category : #'as yet unclassified' }
BabelStdDate >> initialize [
	super initialize.
	date := Date today.
]

{ #category : #'as yet unclassified' }
BabelStdDate >> setDate: dayValue [
	^ date := Date year:  date year month: date monthIndex day:   dayValue
]
