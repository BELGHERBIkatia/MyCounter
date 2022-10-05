Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCounterIsSetAndRead [
|c|
c:= Counter new.
c count:7.
self assert: c count equals: 7.
]

{ #category : #tests }
CounterTest >> testCounterStartingAt5 [
|c|
c:= Counter startingAt: 5.

self assert: c count equals: 5.
]

{ #category : #tests }
CounterTest >> testCounterdecriment [
|c|
c:= Counter startingAt: 5.
c decrement ;decrement.
self assert: c count equals: 3.
]

{ #category : #tests }
CounterTest >> testCounterincrement [
|c|
c:= Counter startingAt: 5.
c increment ;increment.
self assert: c count equals: 7.
]
