"
I calculate your score for a bowling game :)
"
Class {
	#name : #Game,
	#superclass : #Object,
	#instVars : [
		'score'
	],
	#category : #'Seb-Bowling'
}

{ #category : #actions }
Game >> initialize [
  score := 0.
]

{ #category : #actions }
Game >> roll: pins [
  score := score + pins.
 
]

{ #category : #queries }
Game >> score [
  ^ score.
]
