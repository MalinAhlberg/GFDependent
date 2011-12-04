incomplete concrete AdverbScand of Adverb = CatScand ** open CommonScand, ResScand, Prelude in {

  lin
    PositAdvAdj a = {
      s = \\ag => a.s ! adverbForm
      } ;
    ComparAdvAdj _ cadv a np = {
      s = \\ag => cadv.s ++ a.s ! adverbForm ++ cadv.p ++ np.s ! ag ! nominative
      } ;
    ComparAdvAdjS cadv a s = {
      s = \\_ => cadv.s ++ a.s ! adverbForm ++ cadv.p ++ s.s ! Sub
      } ;

    PrepNP _ prep np = {s = \\ag => prep.s ++ np.s ! ag ! accusative} ;

    AdAdv _ ad a = {s = \\ag => ad.s ++ a.s ! ag } ;-- cc2 ;

    PositAdAAdj a = {
      s = a.s ! adverbForm
      } ;

    SubjS subj s = {
      s = \\_ => subj.s ++ s.s ! Sub
      }  ;

    AdnCAdv cadv = {s = cadv.s ++ conjThan} ;

  oper
    adverbForm : AForm = AF (APosit (Strong (GSg Neutr))) Nom ;

}
