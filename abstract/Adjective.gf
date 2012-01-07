--1 Adjective: Adjectives and Adjectival Phrases

abstract Adjective = Cat ** {

  fun

-- The principal ways of forming an adjectival phrase are
-- positive, comparative, relational, reflexive-relational, and
-- elliptic-relational.

    PositA  : A  -> AP ;        -- warm
    ComparA : (a : NPType) -> A  -> NPTyped a -> APTyped a ;  -- warmer than I
    ComplA2 : (a : NPType) -> A2 -> NPTyped a -> APTyped a ;  -- married to her
    ReflA2  : A2 -> AP ;        -- married to itself
    UseA2   : A2 -> AP ;        -- married
    UseComparA : A  -> AP ;     -- warmer
    CAdvAP  : (a,b : NPType) -> CAdv -> APTyped a -> NPTyped b -> APTyped (isObj a b) ; -- as cool as John

-- The superlative use is covered in $Ord$.

    AdjOrd  : Ord -> AP ;       -- warmest

-- Sentence and question complements defined for all adjectival
-- phrases, although the semantics is only clear for some adjectives.
 
    SentAP  : (a : NPType) -> APTyped a -> SC -> APTyped a  ;  -- good that she is here

-- An adjectival phrase can be modified by an *adadjective*, such as "very".

    AdAP    : (a : NPType) -> AdA -> APTyped a -> APTyped a ; -- very warm

-- It can also be postmodified by an adverb, typically a prepositional phrase.

    AdvAP   : (a,b : NPType) -> APTyped a -> AdvTyped b -> APTyped (isObj a b) ; -- warm by nature

-- The formation of adverbs from adjectives (e.g. "quickly") is covered
-- in [Adverb Adverb.html]; the same concerns adadjectives (e.g. "extremely").

}
