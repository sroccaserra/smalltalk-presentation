"
SettingBrowser open.

SmalltalkPresentationBook open.
"
Class {
	#name : #SmalltalkPresentationBook,
	#superclass : #CustomHelp,
	#category : #'Seb-Help'
}

{ #category : #accessing }
SmalltalkPresentationBook class >> bookDescription [
	^ 'A one hour presentation of Smallalk'
]

{ #category : #accessing }
SmalltalkPresentationBook class >> bookName [
	^ 'Seb Smalltalk Presentation'
]

{ #category : #pages }
SmalltalkPresentationBook class >> classesPage [
	| title |
	title := 'Classes'.
	^ HelpTopic title: title contents:
(self heading: title),
'Avec le curseur sur la ligne suivante, exécuter le code et afficher le résultat (Cmd+P). Suppr ou Backspace pour effacer le résultat.

3.

3 + 2.

Inspecter le résultat de la ligne précédente (Cmd+I), onglet Meta, Cmd B pour ouvrir un navigateur sur la classe.

3 class.'

]

{ #category : #pages }
SmalltalkPresentationBook class >> environmentPage [
	| title |
	title := 'Présentation de l''environnement Smalltalk'.
	^ HelpTopic title: title contents:
(self heading: title),

'- ', (self url: 'http://pharo.org'), '

Télécharger PharoLauncher, lancer Pharo dans sa version 7.0 - 64 bits.'
]

{ #category : #pages }
SmalltalkPresentationBook class >> introductionPage [
	| title |
	title := 'Présentation de Smalltalk'.
	^ HelpTopic title: title contents:
(self heading: title),

'Note : Pharo > Settings > Appearance > Standard fonts > Very large

', (self doItFrom: 'SettingBrowser open.')

]

{ #category : #pages }
SmalltalkPresentationBook class >> notesPage [
	| title |
	title := 'Notes'.
	^ HelpTopic title: title contents:
(self heading: title),

(self subheading: 'Particularités'),

'Un bac à sable de luxe : on est emprisonné dans Smalltalk (on ne peut pas utiliser Vim ou les commandes Linux par exemple), en sortir est compliqué, mais c''est une prison de luxe.'
]

{ #category : #'instance creation' }
SmalltalkPresentationBook class >> open [
	(HelpBrowser openOn: self) next
]

{ #category : #accessing }
SmalltalkPresentationBook class >> pages [
	^ #(introductionPage whyPage environmentPage syntaxPage windowSystemPage tutorialsPage notesPage)
]

{ #category : #pages }
SmalltalkPresentationBook class >> syntaxPage [
	| title |
	title := 'Syntaxe'.
	^ HelpTopic title: title contents:
(self heading: title),

'- ', (self url: 'http://wiki.c2.com/?SmalltalkSyntax'), '
- ', (self url: 'http://wiki.c2.com/?SmalltalkSyntaxInaPostcard'),

(self subheading: 'Voir le tutoriel Pharo Syntax Tutorial'),
(self doItFrom: 'HelpBrowser openOn: PharoTutorialsHelp.'),

(self subheading: 'Sur une carte postale'), 
'Inspecter la ligne ci-dessous (Cmd+I), explorer le code Source.

SmalltalkPresentation>>#exampleWithNumber:

', (self doItFrom: 'Transcript open.'), '

', (self doItFrom: '#($a #a "a" 1 1.0)
     do: [ :each |
         Transcript show: (each class name);
                    show: '' ''].'),

(self subheading: 'Un exemple dans la classe String'),

'Inspecter la ligne ci-dessous (Cmd+I), explorer le Bytecode et le code Source.

String>>#asByteArray
'
]

{ #category : #pages }
SmalltalkPresentationBook class >> tutorialsPage [
	| title |
	title := 'Autres didacticiels'.
	^ HelpTopic title: title contents:
(self heading: title),

'Help > Help Browser

', (self doItFrom: 'HelpBrowser open.'),'

Help > Pharo Tutorials

', (self doItFrom: 'HelpBrowser openOn: PharoTutorialsHelp.'), '

Voir aussi :

', (self doItFrom: 'WelcomeHelp open.'), '
', (self doItFrom: 'WelcomeHelp browse.')
]

{ #category : #pages }
SmalltalkPresentationBook class >> whyPage [
	| title |
	title := 'Pourquoi parler de Smalltalk en 2019'.
	^ HelpTopic title: title contents:
(self heading: title),

'Name droping...',

(self subheading: 'Ben Kenobi'),
'"Not as random or as clumsy as a blaster, an elegant weapon for a more civilized age."',

(self subheading: 'Ward Cunningham'),
'- Wiki
- ', (self url: 'http://wiki.c2.com/?WelcomeVisitors'),

(self subheading:'Kent Beck'),
'- TDD
- ', (self url: 'https://www.oreilly.com/library/view/smalltalk-best-practice/9780132852098/'), '

', (self doItFrom: 'TestCase browse'),

(self subheading: 'Martin Fowler & Eric Evans'),
'- Refactoring
- Domain-Driven Design

"The anemic domain model is really just a procedural style design, exactly the kind of thing that object bigots like me (and Eric) have been fighting since our early days in Smalltalk."

- ', (self url: 'https://www.martinfowler.com/bliki/AnemicDomainModel.html')

]

{ #category : #pages }
SmalltalkPresentationBook class >> windowSystemPage [
	| title |
	title := 'Window System'.
	^ HelpTopic title: title contents:
(self heading: title),

'Halo = Alt+Shift+Click'

]
