Class {
	#name : #BowlingGameTest,
	#superclass : #TestCase,
	#category : #'Seb-Bowling'
}

{ #category : #tests }
BowlingGameTest >> testAllOnes [
  | game |
  game := Game new.
  1 to: 20 do: [ :i |
    game roll: 1.
  ].
  self assert: game score equals: 20.
]

{ #category : #tests }
BowlingGameTest >> testGutterGame [
  | game |
  game := Game new.
  1 to: 20 do: [ :i |
    game roll: 0.
  ].
  self assert: game score equals: 0.

]
