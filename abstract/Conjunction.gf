--1 Conjunction: Coordination

-- Coordination is defined for many different categories; here is
-- a sample. The rules apply to *lists* of two or more elements,
-- and define two general patterns: 
-- - ordinary conjunction: X,...X and X
-- - distributed conjunction: both X,...,X and X
--
--
-- $VP$ conjunctions are not covered here, because their applicability
-- depends on language. Some special cases are defined in 
-- [``Extra`` ../abstract/Extra.gf].


abstract Conjunction = Cat ** {

--2 Rules

  fun
    ConjS    : Conj -> [S] -> S ;       -- "he walks and she runs"
    ConjRS   : Conj -> [RS] -> RS ;     -- "who walks and whose mother runs"
    ConjAP   : (b : Boolean) -> Conj -> [AP b] -> AP b;     -- "cold and warm"
    ConjNP   : (b : Boolean) ->  Conj -> [NP b] -> NP b ;     -- "she or we"
    ConjAdv  : (b : Boolean) -> Conj -> [Adv b] -> Adv b ;   -- "here or there"
    ConjIAdv : Conj -> [IAdv] -> IAdv ; -- "where and with whom"
    ConjCN   : Conj -> [CN] -> CN ;     -- "man and woman"
    --BaseNP : (a,b : Boolean) -> NP a -> NP b -> NP (isObj a b) ;
   -- ListNP : [NP Boolean]{2} ;

--2 Categories

-- These categories are only used in this module.

  cat
    [S]{2} ; 
    [RS]{2} ; 
    [Adv Boolean]{2} ; 
    --[NP Boolean]{2} ; 
    [AP Boolean]{2} ;
    [IAdv]{2} ;
    [CN] {2} ;

--2 List constructors

-- The list constructors are derived from the list notation and therefore
-- not given explicitly. But here are their type signatures:

  --  BaseC : C -> C   -> [C] ;  -- for C = S, AP, NP, Adv
  --  ConsC : C -> [C] -> [C] ;
}

