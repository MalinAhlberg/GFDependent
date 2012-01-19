incomplete concrete ExtraScand of ExtraScandAbs = CatScand ** 
   open CommonScand,Coordination,ResScand, ParamX in {
  lin
  -- simplify here, to get Quant easier
    GenNP _ np = {
      s,sp = \\a,n,_,_,g  => np.s ! a ! NPPoss (gennum (ngen2gen g) n) Nom ; 
      --sp = \\_,_,_,_,_ => NONEXIST ;
      det = DDef Indef
      } ;

    ComplBareVS v s  = insertObj (\\_ => s.s ! Sub) (predV v) ;

    StrandRelSlash rp slash  = {
      s = \\t,a,p,ag,_ => 
          rp.s ! ag.g ! ag.n ! RNom ++ slash.s ! t ! a ! p ! Sub ++ slash.c2.s ;
      c = NPAcc
      } ;
    EmptyRelSlash slash = {
      s = \\t,a,p,ag,_ => 
          slash.s ! t ! a ! p ! Sub ++ slash.c2.s ;
      c = NPAcc
      } ;

    StrandQuestSlash ip slash = {
      s = \\t,a,p => 
            let 
              cls = slash.s ! t ! a ! p ;
              who = ip.s ! accusative
            in table {
              QDir   => who ++ cls ! Inv ++ slash.c2.s ;
              QIndir => who ++ cls ! Sub ++ slash.c2.s
              }
      } ;

  lincat
    VPI   = {s : VPIForm => Agr => Str} ;
    [VPI] = {s1,s2 : VPIForm => Agr => Str} ;

  lin
    BaseVPI = twoTable2 VPIForm Agr ;
    ConsVPI = consrTable2 VPIForm Agr comma ;

    MkVPI vp = {
      s = \\v,a => infVP vp a ---- no sup
      } ;
    ConjVPI = conjunctDistrTable2 VPIForm Agr ;
    ComplVPIVV vv vpi = insertObj (\\a => vv.c2.s ++ vpi.s ! VPIInf ! a) (predV vv) ;

  lincat
    VPS   = {s : Order => Agr => Str} ;
    [VPS] = {s1,s2 : Order => Agr => Str} ;

  lin
    BaseVPS = twoTable2 Order Agr ;
    ConsVPS = consrTable2 Order Agr comma ;

    PredVPS np vpi = 
      let
        subj = np.s ! aNPerson ! nominative ;
        agr  = np.a ;
      in {
        s = \\o => 
          let verb = vpi.s ! o ! agr 
          in case o of {
            Main => subj ++ verb ;
            Inv  => verb ++ subj ;   ---- älskar henne och sover jag
            Sub  => subj ++ verb 
            }
        } ;

    MkVPS t p vp = {
      s = \\o,a => 
            let 
              neg = vp.a1 ! p.p ;
              verb = vp.s ! vp.voice ! VPFinite t.t t.a ;
              compl = verb.inf ++ vp.n2 ! a ++ vp.a2 ! a ++ vp.ext ;
            in t.s ++ p.s ++ case o of {
              Main => vp.a0 ++ verb.fin ++ neg ++ compl ;
              Inv  => verb.fin ++ vp.a0 ++ neg ++ compl ; ----
              Sub  => neg ++ vp.a0 ++ verb.fin ++ compl
              }
      } ;


    ConjVPS = conjunctDistrTable2 Order Agr ;

    ICompAP ap = {s = \\a => hur_IAdv.s ++ ap.s ! aNPerson ! a} ;

    IAdvAdv adv = {s = hur_IAdv.s ++ adv.s ! aNPerson} ;

  lincat
    Top = {s : STense => Anteriority => Polarity => Str} ;

  lin
    -- obs! cls.n3 added late, check that it works!
    TopObj np cls = {
      s = \\t,a,p => cls.c2.s ++ np.s ! (getNPerson cls.agr) ! accusative ++ cls.s ! t ! a ! p ! Inv
                     ++ cls.n3 ! np.a 
      } ;
    TopAdv adv cls = {
      s = \\t,a,p => adv.s ! (getNPerson cls.agr) ++ cls.s ! t ! a ! p ! Inv
      } ; 
    TopAdV adv cls = {
      s = \\t,a,p => adv.s ++ cls.s ! t ! a ! p ! Inv
      } ; 
    TopNeg cl = {
      s = \\t,a,p => (negation ! Neg) ++ cl.s ! t ! a ! p ! Inv
      } ;
    
    UseTop t p foc = {s = t.s ++ p.s ++ foc.s ! t.t ! t.a ! p.p} ;

  oper NONEXIST : Str = "#¿@§X?X&%/" ;
} 
