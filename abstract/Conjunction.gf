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
    ConjNP   : (b : NPType) ->  Conj -> [NPTyped b] -> NPTyped b ;     -- "she or we"
    ConjAdv  : (b : NPType) -> Conj -> [AdvTyped b] -> AdvTyped b ;   -- "here or there"
    ConjAP   : (b : NPType) -> Conj -> [APTyped b] -> APTyped b ;   -- "here or there"
    ConjIAdv : Conj -> [IAdv] -> IAdv ; -- "where and with whom"
    ConjCN   : Conj -> [CN] -> CN ;     -- "man and woman"

-- special list constructors for the dependent types
-- changed from (a,b...) ... (isObj a b) to avoid overgeneration. do we loose anything by this?
    BaseNP : (a : NPType) -> NPTyped a -> NPTyped a -> [NPTyped a] ;
    ConsNP : (a : NPType) -> NPTyped a -> [NPTyped a] -> [NPTyped a] ;
    BaseAdv : (a : NPType) -> AdvTyped a -> AdvTyped a -> [AdvTyped a] ;
    ConsAdv : (a : NPType) -> AdvTyped a -> [AdvTyped a] -> [AdvTyped a] ;
    BaseAP : (a : NPType) -> APTyped a -> APTyped a -> [APTyped a] ;
    ConsAP : (a : NPType) -> APTyped a -> [APTyped a] -> [APTyped a] ;

--2 List constructors

-- The list constructors are derived from the list notation and therefore
-- not given explicitly. But here are their type signatures:

  --  BaseC : C -> C   -> [C] ;  -- for C = S, AP, NPTyped, Adv
  --  ConsC : C -> [C] -> [C] ;
}

