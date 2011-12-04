incomplete concrete AdjectiveScand of Adjective = 
  CatScand ** open CommonScand, ResScand, Prelude in {

  lin

    PositA  a = {
      s = \\ag,ap => a.s ! AF (APosit ap) Nom ;
      isPre = True
      } ;
    ComparA _ a np = {
      s = \\ag,ap => case a.isComp of {
        True => compMore ++ a.s ! AF (APosit ap) Nom ;
        _    => a.s ! AF ACompar Nom
        }
        ++ conjThan ++ np.s ! ag ! nominative ; 
      isPre = False
      } ;
    UseComparA a = {
      s = \\_,ap => case a.isComp of {
        True => compMore ++ a.s ! AF (APosit ap) Nom ;
        _    => a.s ! AF ACompar Nom
        } ;
      isPre = False
      } ;

    CAdvAP _ _ ad ap np = {
      s = \\ag,a => ad.s ++ ap.s ! ag ! a ++ ad.p ++ np.s ! ag ! nominative ; 
      isPre = False
      } ;

    AdjOrd ord = {
      s = \\_,_ => ord.s ;
      isPre = True
      } ;

    ComplA2 _ a np = {
      s = \\ag,ap => a.s ! AF (APosit ap) Nom ++ a.c2.s ++ np.s ! ag ! accusative ; 
      isPre = False
      } ;

    ReflA2 a = {
      s = \\ag,ap => a.s ! AF (APosit ap) Nom ++ a.c2.s ++ 
                  reflPron (agrP3 Utr Sg) ; ---- 
      isPre = False
      } ;

    SentAP _ ap sc = {
      s = \\ag,a => ap.s ! ag ! a ++ sc.s ; 
      isPre = False
      } ;

    AdAP _ ada ap = {
      s = \\ag,a => ada.s ++ ap.s ! ag ! a ;
      isPre = ap.isPre
      } ;

    AdvAP _ _ ap adv = {
      s = \\ag,a => ap.s ! ag ! a ++ adv.s ! ag ;
      isPre = ap.isPre
      } ;

    UseA2 a = {
      s = \\ag,ap => a.s !  AF (APosit ap) Nom ;
      isPre = True
      } ;

}
