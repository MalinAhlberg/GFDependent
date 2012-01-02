--1 Conjunction: Coordination

-- gives only the list categories, so that the BaseC and ConsC will be generated
-- and can be overridden

abstract ConjunctionX = Cat ** {

--2 Categories

-- These categories are only used in this module and Conjuction
  cat
    [S]{2} ; 
    [RS]{2} ; 
    [AdvTyped Boolean]{2} ; 
    [NPTyped Boolean]{2} ; 
    [APTyped Boolean]{2} ;
    [IAdv]{2} ;
    [CN] {2} ;

--2 List constructors

-- The list constructors are derived from the list notation and therefore
-- not given explicitly. But here are their type signatures:

  --  BaseC : C -> C   -> [C] ;  -- for C = S, AP, NP, Adv
  --  ConsC : C -> [C] -> [C] ;
}

