incomplete concrete ConjunctionScand of Conjunction = 
  CatScand ** open CommonScand, ResScand, Coordination, Prelude in {

  flags optimize=all_subs ;

  lin

    ConjS conj ss = conjunctDistrTable Order conj ss ;

    ConjAdv _ conj ss = conjunctDistrTable NPerson conj ss ;

    ConjNP _ conj ss = conjunctDistrTable2 NPerson NPForm conj ss ** {
      a = {g = ss.a.g ; n = conjNumber conj.n ss.a.n ; p = ss.a.p}
      } ;

    ConjAP _ conj ss = conjunctDistrTable2 NPerson AFormPos conj ss ** {
      isPre = ss.isPre
      } ;

    ConjRS conj ss = conjunctDistrTable2 Agr RCase conj ss ** {
      c = ss.c
      } ;

    ConjIAdv = conjunctDistrSS ;   

    ConjCN co ns = conjunctDistrTable3 Number DetSpecies Case co ns ** 
      {g = neutrum ; isMod = False} ; ----


-- These fun's are generated from the list cat's.

    BaseS x y = { -- twoTable Order ;
      s1 = x.s ;
      s2 = table {Inv => y.s ! Main ; o => y.s ! o}
      } ;
    ConsS x xs = { -- consrTable Order comma ;
      s1 = \\o => x.s ! Inv ++ comma ++ xs.s1 ! case o of {Inv => Main ; _ => o} ;
      s2 = xs.s2
      } ;
    BaseAdv _ = twoTable NPerson ;
    ConsAdv _ = consrTable NPerson comma ;
    BaseNP  _ x y = twoTable2 NPerson NPForm x y ** {a = conjAgr x.a y.a} ; 
    ConsNP _ xs x = consrTable2 NPerson NPForm comma xs x ** {a = conjAgr xs.a x.a} ;
    BaseAP _ x y = twoTable2 NPerson AFormPos x y ** {isPre = andB x.isPre y.isPre} ;
    ConsAP _ xs x = consrTable2 NPerson AFormPos comma xs x ** {isPre = andB xs.isPre x.isPre} ;
    BaseRS x y = twoTable2 Agr RCase x y ** {c = y.c} ;
    ConsRS xs x = consrTable2 Agr RCase comma xs x ** {c = xs.c} ;
    BaseIAdv = twoSS ;
    ConsIAdv = consrSS comma ;
    BaseCN = twoTable3 Number DetSpecies Case ;
    ConsCN = consrTable3 Number DetSpecies Case comma ;

  lincat
    [S] = {s1,s2 : Order => Str} ;
    [AdvTyped] = {s1,s2 : NPerson => Str} ;
    [IAdv] = {s1,s2 : Str} ;
    [NPTyped] = {s1,s2 : NPerson => NPForm => Str ; a : Agr} ;
    [APTyped] = {s1,s2 : NPerson => AFormPos => Str ; isPre : Bool} ;
    [RS] = {s1,s2 : Agr => RCase => Str ; c : NPForm} ;
    [CN] = {s1,s2 : Number => DetSpecies => Case => Str} ; --- g : NGender ; isMod : Bool} ;

}
