--1 Noun: Nouns, noun phrases, and determiners

abstract Noun = Cat ** {


--2 Noun phrases

-- The three main types of noun phrases are
-- - common nouns with determiners
-- - proper names
-- - pronouns
--
--
  fun
    DetCN   : (a : Boolean) -> Det a -> CN -> NP a ;   -- the man
    UsePN   : PN -> NP Subject ;          -- John
    UsePron : Pron -> NP Subject ;        -- he

-- Pronouns are defined in the module [``Structural`` Structural.html].

-- A noun phrase already formed can be modified by a $Predet$erminer.

    PredetNP : (a : Boolean) -> Predet -> NP a -> NP a; -- only the man 

-- A noun phrase can also be postmodified by the past participle of a
-- verb, by an adverb, or by a relative clause

    PPartNP :  (a : Boolean) -> NP a -> V2  -> NP a ;    -- the man seen
    AdvNP   :  (a,b : Boolean) -> NP a -> Adv b -> NP (isObj a b) ;    -- Paris today
    RelNP   :  (a : Boolean) -> NP a -> RS  -> NP a ;    -- Paris, which is here

-- Determiners can form noun phrases directly.

    DetNP   : (a : Boolean) -> Det a -> NP a ;  -- these five


--2 Determiners

-- The determiner has a fine-grained structure, in which a 'nucleus'
-- quantifier and an optional numeral can be discerned.

    DetQuant    : (a : Boolean) -> Quant a -> Num ->        Det a ;  -- these five
    DetQuantOrd : (a : Boolean) -> Quant a -> Num -> Ord -> Det a ;  -- these five best

-- Whether the resulting determiner is singular or plural depends on the
-- cardinal.

-- All parts of the determiner can be empty, except $Quant$, which is
-- the "kernel" of a determiner. It is, however, the $Num$ that determines
-- the inherent number.

    NumSg   : Num ;
    NumPl   : Num ;
    NumCard : Card -> Num ;

-- $Card$ consists of either digits or numeral words.

  data
    NumDigits  : Digits  -> Card ;  -- 51
    NumNumeral : Numeral -> Card ;  -- fifty-one

-- The construction of numerals is defined in [Numeral Numeral.html].

-- A $Card$ can  be modified by certain adverbs.

  fun
    AdNum : AdN -> Card -> Card ;   -- almost 51

-- An $Ord$ consists of either digits or numeral words.
-- Also superlative forms of adjectives behave syntactically like ordinals.

    OrdDigits  : Digits  -> Ord ;  -- 51st
    OrdNumeral : Numeral -> Ord ;  -- fifty-first
    OrdSuperl  : A       -> Ord ;  -- warmest

-- Definite and indefinite noun phrases are sometimes realized as
-- neatly distinct words (Spanish "un, unos ; el, los") but also without
-- any particular word (Finnish; Swedish definites).

    IndefArt   : Quant Subject ;
    DefArt     : Quant Subject ;

-- Nouns can be used without an article as mass nouns. The resource does
-- not distinguish mass nouns from other common nouns, which can result
-- in semantically odd expressions.

    MassNP     : CN -> NP Subject ;            -- (beer)

-- Pronouns have possessive forms. Genitives of other kinds
-- of noun phrases are not given here, since they are not possible
-- in e.g. Romance languages. They can be found in $Extra$ modules.

    PossPron : Pron -> Quant Subject ;    -- my (house)

-- Other determiners are defined in [Structural Structural.html].



--2 Common nouns

-- Simple nouns can be used as nouns outright.

    UseN : N -> CN ;              -- house

-- Relational nouns take one or two arguments.

    ComplN2 : (a : Boolean ) -> N2 -> NP a -> CN ;    -- mother of the king                  --obs! Object??
    ComplN3 : (a : Boolean ) -> N3 -> NP a -> N2 ;    -- distance from this city (to Paris)

-- Relational nouns can also be used without their arguments.
-- The semantics is typically derivative of the relational meaning.

    UseN2   : N2 -> CN ;          -- mother
    Use2N3  : N3 -> N2 ;          -- distance (from this city)
    Use3N3  : N3 -> N2 ;          -- distance (to Paris)

-- Nouns can be modified by adjectives, relative clauses, and adverbs
-- (the last rule will give rise to many 'PP attachment' ambiguities
-- when used in connection with verb phrases).

    AdjCN   : AP Subject -> CN  -> CN ;   -- big house
    RelCN   : CN -> RS  -> CN ;   -- house that John bought
    AdvCN   : CN -> Adv Subject -> CN ;   -- house on the hill

-- Nouns can also be modified by embedded sentences and questions.
-- For some nouns this makes little sense, but we leave this for applications
-- to decide. Sentential complements are defined in [Verb Verb.html].

    SentCN  : CN -> SC  -> CN ;   -- question where she sleeps

--2 Apposition

-- This is certainly overgenerating.

    ApposCN : CN -> NP Subject -> CN ;    -- city Paris (, numbers x and y)  --obs! Object??


}
