Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testAlternateCreationMethod [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	self assert: ((Counter startingAt: 19) increment ; count) equals: 20
]

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : #tests }
CounterTest >> testIncrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	| c |
	c := Counter new.
	c count: 0 ; increment ; increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTest >> testInitialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	self assert: Counter new count equals: 0
]
