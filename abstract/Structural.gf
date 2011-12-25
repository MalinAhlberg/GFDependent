--1 Structural: Structural Words
-- 
-- Here we have some words belonging to closed classes and appearing
-- in all languages we have considered.
-- Sometimes more distinctions are needed, e.g. $we_Pron$ in Spanish
-- should be replaced by masculine and feminine variants, found in
-- [``ExtraSpa`` ../spanish/ExtraSpa.gf].

abstract Structural = Cat ** {

  fun

-- This is an alphabetical list of structural words

  above_Prep : Prep ;  
  after_Prep : Prep ;
  all_Predet : Predet ;
  almost_AdA : AdA ;   
  almost_AdN : AdN ;   
  although_Subj : Subj ;
  always_AdV : AdV ;
  and_Conj : Conj ;
  because_Subj : Subj ;
  before_Prep : Prep ;
  behind_Prep : Prep ;
  between_Prep : Prep ;
  both7and_DConj : Conj ; -- both...and
---b  both7and_DConj : DConj ;
  but_PConj : PConj ;
  by8agent_Prep : Prep ; -- by (agent)
  by8means_Prep : Prep ; -- by (means of)
  can8know_VV : VV ; -- can (capacity)
  can_VV : VV ;      -- can (possibility)
  during_Prep : Prep ;
  either7or_DConj : Conj ; -- either...or
---b  either7or_DConj : DConj ;
  every_Det : Det Subject ;
  everybody_NP : NP Subject ;  -- everybody
  everything_NP : NP Subject ;
  everywhere_Adv : Adv Subject ;
---  first_Ord : Ord ; DEPRECATED
  few_Det : Det Subject ;
  for_Prep : Prep ;
  from_Prep : Prep ;
  he_Pron : Pron Subject ;
  here_Adv : Adv Subject ;
  here7to_Adv : Adv Subject ; -- to here
  here7from_Adv : Adv Subject ;  -- from here
  how_IAdv : IAdv ;
  how8many_IDet : IDet ;
  how8much_IAdv : IAdv ;
  i_Pron : Pron Subject ;
  if_Subj : Subj ;
  in8front_Prep : Prep ; -- in front of
  in_Prep : Prep ;
  it_Pron : Pron Subject ;
  less_CAdv : CAdv ;
  many_Det : Det Subject ;
  more_CAdv : CAdv ;
  most_Predet : Predet ;
  much_Det : Det Subject ;
  must_VV : VV ;
---b  no_Phr : Phr ;
  no_Utt : Utt ;
  on_Prep : Prep ;
---  one_Quant : QuantSg ; DEPRECATED
  only_Predet : Predet ;
  or_Conj : Conj ;
  otherwise_PConj : PConj ;
  part_Prep : Prep ;
  please_Voc : Voc ;
  possess_Prep : Prep ; -- of (possessive)
  quite_Adv : AdA ;
  she_Pron : Pron Subject ;
  so_AdA : AdA ;
  someSg_Det : Det Subject ;
  somePl_Det : Det Subject ;
  somebody_NP : NP Subject ;
  something_NP : NP Subject ;
  somewhere_Adv : Adv Subject ;
  that_Quant : Quant Subject ;
  that_Subj : Subj ;
  there_Adv : Adv Subject ;
  there7to_Adv : Adv Subject ; -- to there
  there7from_Adv : Adv Subject ; -- from there
  therefore_PConj : PConj ;
  they_Pron : Pron Subject ; 
  this_Quant : Quant Subject ;
  through_Prep : Prep ;
  to_Prep : Prep ;
  too_AdA : AdA ;
  under_Prep : Prep ;
  very_AdA : AdA ;
  want_VV : VV ;
  we_Pron : Pron Subject ;
  whatPl_IP : IP ; -- what (plural)
  whatSg_IP : IP ; -- what (singular)
  when_IAdv : IAdv ;
  when_Subj : Subj ;
  where_IAdv : IAdv ;
  which_IQuant : IQuant ;
  whoPl_IP : IP ;  -- who (plural)
  whoSg_IP : IP ;  -- who (singular)
  why_IAdv : IAdv ;
  with_Prep : Prep ;
  without_Prep : Prep ;
---b  yes_Phr : Phr ;
  yes_Utt : Utt ;
  youSg_Pron : Pron Subject ; -- you (singular)
  youPl_Pron : Pron Subject ; -- you (plural)
  youPol_Pron : Pron Subject ; -- you (polite)

  no_Quant : Quant Subject ; 
  not_Predet : Predet ;
  if_then_Conj : Conj ;
  at_least_AdN : AdN ;
  at_most_AdN : AdN ;
  nobody_NP : NP Subject ;
  nothing_NP : NP Subject ;
  except_Prep : Prep ;

  as_CAdv : CAdv ;

  have_V2 : V2 ;

  fun language_title_Utt : Utt ;

}
