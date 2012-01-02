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


abstract Conjunction = ConjunctionX - [BaseNP,ConsNP,BaseAP,ConsAP,BaseAdv,ConsAdv] ** {

--2 Rules

  fun
    ConjS    : Conj -> [S] -> S ;       -- "he walks and she runs"
    ConjRS   : Conj -> [RS] -> RS ;     -- "who walks and whose mother runs"
    ConjNP   : (b : Boolean) ->  Conj -> [NPTyped b] -> NPTyped b ;     -- "she or we"
    ConjAdv  : (b : Boolean) -> Conj -> [AdvTyped b] -> AdvTyped b ;   -- "here or there"
    ConjAP   : (b : Boolean) -> Conj -> [APTyped b] -> APTyped b ;   -- "here or there"
    ConjIAdv : Conj -> [IAdv] -> IAdv ; -- "where and with whom"
    ConjCN   : Conj -> [CN] -> CN ;     -- "man and woman"

-- special list constructors for the dependent types
    BaseNP : (a,b : Boolean) -> NPTyped a -> NPTyped b -> [NPTyped (isObj a b)] ;
    ConsNP : (a,b : Boolean) -> NPTyped a -> [NPTyped b] -> [NPTyped (isObj a b)] ;
    BaseAdv : (a,b : Boolean) -> AdvTyped a -> AdvTyped b -> [AdvTyped (isObj a b)] ;
    ConsAdv : (a,b : Boolean) -> AdvTyped a -> [AdvTyped b] -> [AdvTyped (isObj a b)] ;
    BaseAP : (a,b : Boolean) -> APTyped a -> APTyped b -> [APTyped (isObj a b)] ;
    ConsAP : (a,b : Boolean) -> APTyped a -> [APTyped b] -> [APTyped (isObj a b)] ;

--2 List constructors

-- The list constructors are derived from the list notation and therefore
-- not given explicitly. But here are their type signatures:

  --  BaseC : C -> C   -> [C] ;  -- for C = S, AP, NPTyped, Adv
  --  ConsC : C -> [C] -> [C] ;
}

