incomplete concrete CatScand of Cat = 
  CommonX -[Tense,Temp,Adv] ** open (RS = ResScand), Prelude, CommonScand, (R = ParamX) in {

  flags optimize=all_subs ;


  lin
   NPSub np = {s = np.s ! aNPerson ; a = np.a} ; 
   NPObj _ np = np ;
   APSub ap = {s = ap.s ! aNPerson ; isPre = ap.isPre} ; 
   APObj _ ap = ap ;
   AdvSub a = {s = a.s ! aNPerson } ; 
   AdvObj _ a = a ;
  lincat
   Adv = {s : NPerson => Str} ;
   AdvObject = {s : NPerson => Str} ;
   AdvSubject = {s : Str} ;
-- Tensed/Untensed

    S  = {s : Order => Str} ;
    QS = {s : QForm => Str} ;
    RS = {s : Agr => RCase => Str ; c : NPForm} ;
    SSlash = {s : Order => Str ; n3 : Agr => Str ; c2 : Complement} ;

-- Sentence

    Cl = {s : STense => Anteriority => Polarity => Order => Str ; agr : Agr} ;
    ClSlash = {
      s : STense => Anteriority => Polarity => Order => Str ; 
      n3 : Agr => Str ;
      c2 : Complement ;
      agr : Agr  -- agr of the subject
      } ;
    Imp = {s : Polarity => Number => Str} ;

-- Question

    QCl = {s : STense => Anteriority => Polarity => QForm => Str} ;
    IP = {s : NPForm => Str ; g : Gender ; n : Number} ;
    IComp = {s : AFormPos => Str} ; 
    IDet = {s : NGender => Str ; n : Number ; det : DetSpecies} ;
    IQuant = {s : Number => NGender => Str ; det : DetSpecies} ;

-- Relative; the case $c$ is for "det" clefts.

    RCl = {s : STense => Anteriority => Polarity => Agr => RCase => Str ; c : NPForm} ;
    RP  = {s : Gender => Number => RCase => Str ; a : RAgr} ;

-- Verb

    VP = {
      s : VPForm => {
        fin : Str ;          -- V1 har  ---s1
        inf : Str            -- V2 sagt ---s4
        } ;
      a0 : Str ;             -- bara (hon bara sover)
      a1 : Polarity => Str ; -- A1 inte ---s3
      n2 : Agr => Str ;      -- N2 dig  ---s5  
      a2 : Agr => Str ;  -- A2 idag ---s6
      ext : Str ;            -- S-Ext att hon g�r   ---s7
      en2,ea2,eext : Bool    -- indicate if the field exists
      } ;
    VPSlash = CommonScand.VP ** {
      n3 : Agr => Str ;  -- object-control complement
      c2 : Complement
      } ;
    Comp = {s : Agr => Str} ; 


-- Adjective

    AP = {s : NPerson => AFormPos => Str ; isPre : Bool } ; 
    APObject = {s : NPerson => AFormPos => Str ; isPre : Bool } ; 
    APSubject = {s :  AFormPos => Str ; isPre : Bool } ; 

-- Noun

-- The fields $isMod$ and $isDet$, and the boolean parameter of
-- determiners, are a hack (the simples possible we found) that
-- permits treating definite articles "huset - de fem husen - det gamla huset"
-- as $Quant$.


    CN = {s : Number => DetSpecies => Case => Str ; g : NGender ; isMod : Bool} ;
             --NPerson gives information about the subject  
    NP       = {s : NPerson => NPForm => Str ; a : Agr} ;
    NPObject = {s : NPerson => NPForm => Str ; a : Agr} ;
    NPSubject = {s : NPForm => Str ; a : Agr} ;
    Pron = {s : NPForm => Str ; a : Agr} ;
    Det = {s,sp : NPerson => Bool => NGender => Str ; n : Number ; det : DetSpecies} ;
    Quant = {s,sp : NPerson => Number => Bool => Bool => NGender => Str ; det : DetSpecies} ;
    Predet = {s : Gender => Number => Str ; p : Str ; a : PredetAgr} ;
    Num = {s : NGender => Str ; isDet : Bool ; n : Number} ;
    Card = {s : NGender => Str ; n : Number} ;
    Ord = {s : Str} ;

-- Numeral

    Numeral = {s : CardOrd => Str ; n : Number} ;
    Digits  = {s : CardOrd => Str ; n : Number} ;

-- Structural

    Conj = {s1,s2 : Str ; n : Number} ;
    Subj = {s : Str} ;
    Prep = {s : Str} ;

-- Open lexical classes, e.g. Lexicon

    V, VS, VQ, VA = Verb ;
    V2, VV, V2Q, V2S, V2A = Verb ** {c2 : Complement} ;
    V3, V2V = Verb ** {c2,c3 : Complement} ;

    A  = Adjective ** {isComp : Bool} ;
       -- {s : AForm => Str} ;
    A2 = Adjective ** {isComp : Bool ; c2 : Complement} ;

    N  = Noun ; 
      -- {s : Number => Species => Case => Str ; g : Gender} ;
    N2   = Noun  ** {c2 : Complement} ;
    N3   = Noun  ** {c2,c3 : Complement} ;
    PN = {s : Case => Str ; g : Gender} ;



  lincat
    Temp  = {s : Str ; t : STense ; a : Anteriority} ;
    Tense = {s : Str ; t : STense} ;
}
