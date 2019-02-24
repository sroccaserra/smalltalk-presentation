"
I am a one hour Smalltalk presentation.

ProfStef goOn: SmalltalkPresentation.
"
Class {
	#name : #SmalltalkPresentation,
	#superclass : #AbstractTutorial,
	#category : #Seb
}

{ #category : #lessons }
SmalltalkPresentation >> classes [
	""

	|  |
	^ Lesson title: 'Classes' lesson: '
"Avec le curseur sur la ligne suivante, exécuter le code et afficher le résultat (Cmd+P). Suppr ou Backspace pour effacer le résultat."

3.

3 + 2.

"Inspecter le résultat de la ligne précédente (Cmd+I), onglet Meta, Cmd B pour ouvrir un navigateur sur la classe."

3 class.

ProfStef previous.
ProfStef next.'.
]

{ #category : #lessons }
SmalltalkPresentation >> environment [
	""

	|  |
	^ Lesson title: 'Présentation de l''environnement Smalltalk' lesson: '
WebBrowser openOn: ''http://pharo.org''.

"Télécharger PharoLauncher, lancer Pharo dans sa version 7.0 - 64 bits."

ProfStef previous.
ProfStef next.'
]

{ #category : #lessons }
SmalltalkPresentation >> exampleWithNumber: x [
    "A method that illustrates every part of Smalltalk method syntax
    except primitives. It has unary, binary, and keyboard messages,
    declares arguments and temporaries, accesses a global variable
    (but not an instance variable), uses literals (array, character,
    symbol, string, integer, float), uses the pseudo variables
    true, false, nil, self, and super, and has sequence, assignment,
    return and cascade. It has both zero argument and one argument blocks."
    | y |
    true & false not & (nil isNil) ifFalse: [self halt].
    y := self size + super size.
    #($a #a "a" 1 1.0)
        do: [ :each |
            Transcript show: (each class name);
                       show: ' '].
    ^ x < y

]

{ #category : #lessons }
SmalltalkPresentation >> makingATutorial [
	""

	|  |
	^ Lesson title: 'Comment faire un tutoriel' lesson: '
"Help > Help Browser"

HelpBrowser open.

"Help > Pharo Tutorials"

HelpBrowser openOn: PharoTutorialsHelp.

ProfStef previous.
ProfStef next.'.
]

{ #category : #lessons }
SmalltalkPresentation >> notes [
	""

	|  |
	^ Lesson title: 'Notes' lesson: '
"
## Particularités

Un bac à sable de luxe : on est emprisonné dans Smalltalk (on ne peut pas utiliser Vim ou les commandes Linux par exemple), en sortir est compliqué, mais c''est une prison de luxe.
"

ProfStef previous.
ProfStef next.'.
]

{ #category : #lessons }
SmalltalkPresentation >> syntax [
	""

	|  |
	^ Lesson title: 'Syntaxe' lesson: '
WebBrowser openOn: ''http://wiki.c2.com/?SmalltalkSyntax''.
WebBrowser openOn: ''http://wiki.c2.com/?SmalltalkSyntaxInaPostcard''.

"Voir le tutoriel Pharo Syntax Tutorial"

ProfStef goOn: PharoSyntaxTutorial.

"Inspecter la ligne ci-dessous (Cmd+I), explorer le code Source"

SmalltalkPresentation>>#exampleWithNumber:.

"Un peu plus de détails"

true.

true & false.

true & false not.

nil isNil.

true & false not & (nil isNil).

true & false not & (nil isNil) ifFalse: [self halt].

true & false not & (nil isNil) ifTrue: [self halt].

#($a #a "a" 1 1.0).

Transcript open.

#($a #a "a" 1 1.0)
     do: [ :each |
         Transcript show: (each class name);
                    show: '' ''].

"Inspecter la ligne ci-dessous (Cmd+I), explorer le Bytecode et le code Source"

String>>#asByteArray.

ProfStef previous.
ProfStef next.'
]

{ #category : #tutorial }
SmalltalkPresentation >> tutorial [
	"comment stating purpose of message"

	| |
	^ #(#why #environment #classes #syntax #windowSystem #makingATutorial #notes)
]

{ #category : #lessons }
SmalltalkPresentation >> why [
	""

	|  |
	^ Lesson title: 'Pourquoi parler de Smalltalk en 2019' lesson: '
"Ward Cunningham"

WebBrowser openOn: ''http://c2.com/''.
WebBrowser openOn: ''http://wiki.c2.com/?WelcomeVisitors''.

"Kent Beck"

WebBrowser openOn: ''https://www.oreilly.com/library/view/smalltalk-best-practice/9780132852098/''.

TestCase browse.

"Martin Fowler & Eric Evans"

WebBrowser openOn: ''https://www.martinfowler.com/bliki/AnemicDomainModel.html''.

ProfStef next.'.
]

{ #category : #lessons }
SmalltalkPresentation >> windowSystem [
	""

	|  |
	^ Lesson title: 'Window System' lesson: '
"Halo = Alt+Shift+Click"

ProfStef previous.
ProfStef next.'.
]
