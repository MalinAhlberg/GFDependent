--1 Idiom: Idiomatic Expressions

abstract Idiom = Cat ** {

-- This module defines constructions that are formed in fixed ways,
-- often different even in closely related languages.

  fun
    ImpersCl  : VP -> Cl ;        -- it is hot
    GenericCl : VP -> Cl ;        -- one sleeps

    CleftNP   : NPTyped Subject -> RS -> Cl ; -- it is I who did it
    CleftAdv  : AdvTyped Subject -> S  -> Cl ; -- it is here she slept

    ExistNP   : NPTyped Subject -> Cl ;        -- there is a house
    ExistIP   : IP -> QCl ;       -- which houses are there

    ProgrVP   : VP -> VP ;        -- be sleeping

    ImpPl1    : VP -> Utt ;       -- let's go

    ImpP3     : NPTyped Subject -> VP -> Utt ; -- let John walk
}
