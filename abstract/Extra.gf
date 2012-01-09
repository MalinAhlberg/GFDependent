--1 More syntax rules

-- This module defines syntax rules that are not implemented in all
-- languages, but in more than one, so that it makes sense to offer a
-- common API.

abstract Extra = Cat ** {

  fun
    GenNP       : NP -> Quant ;       -- this man's
    GenIP       : IP -> IQuant ;      -- whose
    GenRP       : Num -> CN -> RP ;   -- whose car
    ComplBareVS : VS -> S -> VP ;     -- know you go
    CompBareCN  : CN -> Comp ;        -- (est) professeur

    StrandRelSlash   : RP -> ClSlash -> RCl ;   -- that he lives in
    EmptyRelSlash    : ClSlash -> RCl ;   -- he lives in
    StrandQuestSlash : IP -> ClSlash -> QCl ;   -- whom does John live with

-- $VP$ conjunction, which has different fragments implemented in
-- different languages - never a full $VP$, though.

  cat
    VPI ;
    [VPI] {2} ;

  fun
    MkVPI : VP -> VPI ;
    ConjVPI : Conj -> [VPI] -> VPI ;
    ComplVPIVV : VV -> VPI -> VP ;

  -- new 4/12/2009
  cat
    VPS ;
    [VPS] {2} ;

  fun
    MkVPS : Temp -> Pol -> VP -> VPS ;
    ConjVPS : Conj -> [VPS] -> VPS ;
    PredVPS : NP -> VPS -> S ;

  -- 9/4/2010

  fun
    ProDrop : Pron -> Pron ;  -- unstressed subject pronoun becomes []: "(io) sono stanco"
    ICompAP : AP -> IComp ;   -- "how old"
    IAdvAdv : Adv -> IAdv ;   -- "how often"

    CompIQuant : IQuant -> IComp ; -- which (is it) [agreement to NP]

    PrepCN : Prep -> CN -> Adv ;   -- by accident [Prep + CN without article]

  -- fronted/focal constructions, only for main clauses

  cat
    Top ;

  fun
    TopObj : NP  -> ClSlash -> Top ;   -- her I love
    TopAdv : Adv -> Cl      -> Top ;   -- today I will sleep
    TopAdV : AdV -> Cl      -> Top ;   -- never will I sleep
    TopAP  : AP  -> NP      -> Top ;   -- green was the tree
    TopNeg : Cl             -> Top ;   -- not is he here
    TopVP  : VP  -> NP      -> Top ;   -- love her I do
    TopVV  : VV -> VP -> NP -> Top ;   -- to love her I want
    
    UseTop : Temp -> Pol -> Top -> Utt ;

  fun
    PartVP : VP -> AP ; -- (the man) looking at Mary
    EmbedPresPart : VP -> SC ; -- looking at Mary (is fun)

-- this is a generalization of Verb.PassV2 and should replace it in the future.

    PassVPSlash : VPSlash -> VP ; -- be forced to sleep

}
