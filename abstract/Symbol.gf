--1 Symbolic expressions

-- *Note*. This module is not automatically included in the main
-- grammar [Lang Lang.html].

abstract Symbol = Cat, PredefAbs ** {

--2 Noun phrases with symbols and numbers

fun

  SymbPN   : Symb -> PN ;                -- x
  IntPN    : Int -> PN ;                 -- 27
  FloatPN  : Float -> PN ;               -- 3.14159
  NumPN    : Card -> PN ;
  CNNumNP  : CN -> Card -> NPSubject ;          -- level five ; level 5
  CNSymbNP : Det Subject -> CN -> [Symb] -> NPSubject ; -- (the) (2) numbers x and y -- obs! Det Subject?


--2 Sentence consisting of a formula

  SymbS    : Symb -> S ;                 -- A

--2 Symbols as numerals

  SymbNum  : Symb -> Card ;              -- n
  SymbOrd  : Symb -> Ord ;               -- n'th

--2 Symbol lists

-- A symbol list has at least two elements. The last two are separated
-- by a conjunction ("and" in English), the others by commas.
-- This produces "x, y and z", in English. 

cat
  Symb ;
  [Symb]{2} ;

fun
  MkSymb : String -> Symb ;

--2 Obsolescent

  CNIntNP  : CN -> Int -> NPSubject ;           -- level 53 (covered by CNNumNP)

}
