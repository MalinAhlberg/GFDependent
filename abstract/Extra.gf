--1 More syntax rules

-- This module defines syntax rules that are not implemented in all
-- languages, but in more than one, so that it makes sense to offer a
-- common API.

abstract Extra = Cat ** {

  fun
    GenNP       : (a : Boolean) -> NPTyped a -> QuantTyped a;       -- this man's
    GenIP       : IP -> IQuant ;      -- whose
    GenRP       : Num -> CN -> RP ;   -- whose car
    ComplBareVS : VS -> S -> VP ;     -- know you go

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
    PredVPS : NPTyped Subject -> VPS -> S ;

  -- 9/4/2010

  fun
    ProDrop : (a : Boolean) -> PronTyped a -> PronTyped a ;  -- unstressed subject pronoun becomes []: "(io) sono stanco"
    ICompAP : APTyped Subject -> IComp ;   -- "how old"
    IAdvAdv : AdvTyped Subject -> IAdv ;   -- "how often"

    CompIQuant : IQuant -> IComp ; -- which (is it) [agreement to NP]

    PrepCN : Prep -> CN -> AdvTyped Subject ;   -- by accident [Prep + CN without article]

  -- fronted/focal constructions, only for main clauses

  cat
    Top ;

  fun
    TopObj : NPTyped Object -> ClSlash -> Top ;   -- her I love
    TopAdv : AdvTyped Object -> Cl     -> Top ;   -- today I will sleep
    TopAdV : AdV -> Cl       -> Top ;   -- never will I sleep
    TopAP  : APTyped Object -> NPTyped Subject  -> Top ;   -- green was the tree
    TopNeg : Cl            -> Top ;   -- not is he here
    TopVP  : VP       -> NPTyped Subject  -> Top ;   -- love her I do
    TopVV  : VV -> VP -> NPTyped Subject  -> Top ;   -- to love her I want
    
    UseTop : Temp -> Pol -> Top -> Utt ;

  fun
    PartVP : VP -> APTyped Subject ; -- (the man) looking at Mary --obs! Object?
    EmbedPresPart : VP -> SC ; -- looking at Mary (is fun)

-- this is a generalization of Verb.PassV2 and should replace it in the future.

    PassVPSlash : VPSlash -> VP ; -- be forced to sleep

}
