"
I am a place to hang various pieces of translation support.
"
Class {
	#name : #CogClass,
	#superclass : #VMClass,
	#category : #'VMMaker-JIT'
}

{ #category : #'translation support' }
CogClass >> cCoerceSimple: value to: cTypeString [

	"Type coercion for translation and simulation.
	 For simulation answer a suitable surrogate for the struct types"

	<doNotGenerate>
	^ cTypeString caseOf: { 
			  ([ #'unsigned long' ] -> [ value ]).
			  ([ #'unsigned int' ] -> [ value ]).
			  ([ #'unsigned short' ] -> [ value ]).
			  ([ #sqInt ] -> [ value ]).
			  ([ #sqIntptr_t ] -> [ value ]).
			  ([ #usqIntptr_t ] -> [ value ]).
			  ([ #usqInt ] -> [ value ]).
			  ([ #sqLong ] -> [ value ]).
			  ([ #usqLong ] -> [ value ]).
			  ([ #'AbstractInstruction *' ] -> [ value ]).
			  ([ #'SpurSegmentInfo *' ] -> [ value ]).
			  ([ #'BytecodeFixup *' ] -> [ value ]).
			  ([ #'CogMethod *' ] -> [ value ]).
			  ([ #'char *' ] -> [ value ]).
			  ([ #'sqInt *' ] -> [ value ]).
			  ([ #'void *' ] -> [ value ]).
			  ([ #void ] -> [ value ]).
			  ([ #'void (*)()' ] -> [ value ]).
			  ([ #'void (*)(void)' ] -> [ value ]).
			  ([ #'unsigned long (*)(void)' ] -> [ value ]).
			  ([ #'void (*)(unsigned long,unsigned long)' ] -> [ value ]).
			  ([ #'usqIntptr_t (*)(void)' ] -> [ value ]) }
]