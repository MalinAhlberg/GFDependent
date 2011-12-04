--1 Adjective: Adjectives and Adjectival Phrases

abstract Adjective = Cat ** {

  fun

-- The principal ways of forming an adjectival phrase are
-- positive, comparative, relational, reflexive-relational, and
-- elliptic-relational.

    PositA  : A  -> AP Subject ;        -- warm
    ComparA : (a : Boolean) -> A  -> NP a -> AP a ;  -- warmer than I
    ComplA2 : (a : Boolean) -> A2 -> NP a -> AP a ;  -- married to her
    ReflA2  : A2 -> AP Subject ;        -- married to itself
    UseA2   : A2 -> AP Subject ;        -- married
    UseComparA : A  -> AP Subject ;     -- warmer
    CAdvAP  : (a,b : Boolean) -> CAdv -> AP a -> NP b -> AP (isObj a b) ; -- as cool as John

-- The superlative use is covered in $Ord$.

    AdjOrd  : Ord -> AP Subject ;       -- warmest

-- Sentence and question complements defined for all adjectival
-- phrases, although the semantics is only clear for some adjectives.
 
    SentAP  : (a : Boolean) -> AP  a -> SC -> AP a  ;  -- good that she is here

-- An adjectival phrase can be modified by an *adadjective*, such as "very".

    AdAP    : (a : Boolean) -> AdA -> AP a -> AP a ; -- very warm

-- It can also be postmodified by an adverb, typically a prepositional phrase.

    AdvAP   : (a,b : Boolean) -> AP a -> Adv b -> AP (isObj a b) ; -- warm by nature

-- The formation of adverbs from adjectives (e.g. "quickly") is covered
-- in [Adverb Adverb.html]; the same concerns adadjectives (e.g. "extremely").

}
