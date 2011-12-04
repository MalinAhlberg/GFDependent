--1 Adverb: Adverbs and Adverbial Phrases

abstract Adverb = Cat ** {

  fun

-- The two main ways of forming adverbs are from adjectives and by
-- prepositions from noun phrases.

    PositAdvAdj : A -> Adv Subject ;                 -- warmly
    PrepNP      : (a : Boolean) -> Prep -> NP a -> Adv a ;        -- in the house

-- Comparative adverbs have a noun phrase or a sentence as object of
-- comparison.

    ComparAdvAdj  : (a : Boolean) -> CAdv -> A -> NP a -> Adv a ; -- more warmly than John
    ComparAdvAdjS : CAdv -> A -> S  -> Adv Subject  ; -- more warmly than he runs

-- Adverbs can be modified by 'adadjectives', just like adjectives.

    AdAdv  : (a : Boolean) -> AdA -> Adv a -> Adv a ;             -- very quickly

-- Like adverbs, adadjectives can be produced by adjectives.

    PositAdAAdj : A -> AdA ;                 -- extremely

-- Subordinate clauses can function as adverbs.

    SubjS  : Subj -> S -> Adv Subject ;              -- when she sleeps

-- Comparison adverbs also work as numeral adverbs.

    AdnCAdv : CAdv -> AdN ;                  -- less (than five)

}
