--1 Adverb: Adverbs and Adverbial Phrases

abstract Adverb = Cat ** {

  fun

-- The two main ways of forming adverbs are from adjectives and by
-- prepositions from noun phrases.

    PositAdvAdj : A -> Adv ;                 -- warmly
    PrepNP      : (a : NPType) -> Prep -> NPTyped a -> AdvTyped a ;        -- in the house

-- Comparative adverbs have a noun phrase or a sentence as object of
-- comparison.

    ComparAdvAdj  : (a : NPType) -> CAdv -> A -> NPTyped a -> AdvTyped a ; -- more warmly than John
    ComparAdvAdjS : CAdv -> A -> S  -> Adv  ; -- more warmly than he runs

-- Adverbs can be modified by 'adadjectives', just like adjectives.

    AdAdv  : (a : NPType) -> AdA -> AdvTyped a -> AdvTyped a ;             -- very quickly

-- Like adverbs, adadjectives can be produced by adjectives.

    PositAdAAdj : A -> AdA ;                 -- extremely

-- Subordinate clauses can function as adverbs.

    SubjS  : Subj -> S -> Adv ;              -- when she sleeps

-- Comparison adverbs also work as numeral adverbs.

    AdnCAdv : CAdv -> AdN ;                  -- less (than five)

}
