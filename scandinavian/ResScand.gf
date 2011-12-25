--1 Scandinavian auxiliary operations

interface ResScand = DiffScand ** open CommonScand, Prelude in {

--2 Constants uniformly defined in terms of language-dependent constants

  param
    CardOrd = NCard NGender | NOrd AFormSup ; -- sic! (AFormSup)

  oper aNPerson   : NPerson = Per3 ; 
       getNPerson : Agr -> NPerson = \a -> 
         case <a.n,a.p> of {
              <_ ,P3 > => Per3 ;
              <n ,P1 > => Per1 n ;
              <n ,P2 > => Per2 n } ;

      noRefl : NPerson => Str = \\_ => "" ;

  oper  
    agrP3 : Gender -> Number -> Agr = \g,n -> {
      g = g ;
      n = n ;
      p = P3
      } ;

    Noun = {s : Number => Species => Case => Str ; g : NGender} ;

-- needed for VP conjunction
  param
    VPIForm = VPIInf | VPISup ; ---- sup not yet used


-- This function is here because it depends on $verbHave, auxFut, auxCond$.
 oper
  predV : Verb -> VP = \verb -> 
    let
      diath = case verb.vtype of {
        VPass => Pass ;
        _ => Act
        } ;
      vfin : Voice -> STense -> Str = \v,t -> verb.s ! vFin t v ;
      vsup : Voice -> Str = \v -> verb.s ! VI (VSupin v) ; --# notpresent  
      vinf : Voice -> Str = \v -> verb.s ! VI (VInfin v) ;

      auxv = case hasAuxBe verb of {
        True => verbBe.s ;
        _ => verbHave.s
        } ;
 

      har : STense -> Str = \t -> auxv ! vFin t Act ;
      ha  : Str = auxv ! VI (VInfin Act) ;

      vf : Str -> Str -> {fin,inf : Str} = \fin,inf -> {
        fin = fin ; inf = inf ++ verb.part
        } ;

    in {
    s = \\vc => table {
      VPFinite t Simul => case t of {
--        SPres | SPast => vf (vfin t) [] ; -- the general rule
        SPast => vf (vfin vc t) [] ;    --# notpresent
        SFut  => vf auxFut (vinf vc) ;    --# notpresent
        SFutKommer => vf auxFutKommer (auxFutPart ++ infMark ++ (vinf vc)) ;   --# notpresent
        SCond => vf auxCond (vinf vc) ;   --# notpresent
        SPres => vf (vfin vc t) []
        } ;
      VPFinite t Anter => case t of {    --# notpresent
        SPres | SPast => vf (har t) (vsup vc) ; --# notpresent
        SFut  => vf auxFut (ha ++ (vsup vc)) ; --# notpresent
        SFutKommer => vf auxFutKommer (auxFutPart ++ infMark ++ ha ++ (vsup vc)) ; --# notpresent
        SCond => vf auxCond (ha ++ (vsup vc))  --# notpresent
        } ;                              --# notpresent
      VPImperat => vf (verb.s ! VF (VImper vc)) [] ;
      VPInfinit Anter => vf [] (ha ++ (vsup vc)) ;  --# notpresent
      VPInfinit Simul => vf [] (vinf vc)
      } ;
    a0  : Str = [] ;
    a1  : Polarity => Str = negation ;
    n2  : Agr => Str = \\a => case verb.vtype of {
      VRefl => reflPron a ;
      _ => []
      } ;
    a2  : Agr => Str = \\_ => [] ;
    ext : Str = [] ;
    voice = diath ;
    en2,ea2,eext : Bool = False   -- indicate if the field exists
    } ;

  detCN :  {s,sp : NPerson => Bool => NGender => Str ; n : Number ; det : DetSpecies}-> {s : Number => DetSpecies => Case => Str ; g : NGender ; isMod : Bool}  -> {s : NPerson => NPForm => Str ; a : Agr} = \det,cn ->
      let 
        g = cn.g ;
        m = cn.isMod ;
        dd = case <det.det,detDef,m> of {
          <DDef Def, Indef, True> => DDef Indef ;
          <d,_,_> => d
          }
      in {
      s = \\a,c => det.s ! a ! m ! g ++
                 cn.s ! det.n ! dd ! caseNP c ; 
      a = agrP3 (ngen2gen g) det.n
      } ;



}
