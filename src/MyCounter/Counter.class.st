"
Counter is a simple concrete class which supports incrementing and
decrementing a counter.
Its API is
- decrement, increment
- count
Its creation API is message startingAt:
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #'class initialization' }
Counter class >> startingAt: value [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ self new count: value
]

{ #category : #accessing }
Counter >> count [
	^ count 
]

{ #category : #operations }
Counter >> count: value [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
	count := value 
]

{ #category : #operations }
Counter >> decrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	count := count - 1
]

{ #category : #operations }
Counter >> increment [
			
	count := count + 1
]

{ #category : #initialization }
Counter >> initialize [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	count := 0
]

{ #category : #printing }
Counter >> printOn: stream [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
	super printOn: stream.
	stream nextPutAll: ' with value: ', count printString
]
