--1 Phrase: Phrases and Utterances

abstract Phrase = Cat ** {

-- When a phrase is built from an utterance it can be prefixed
-- with a phrasal conjunction (such as "but", "therefore")
-- and suffixing with a vocative (typically a noun phrase).

  fun
    PhrUtt   : PConj -> Utt -> Voc -> Phr ; -- but come here, my friend

-- Utterances are formed from sentences, questions, and imperatives.

    UttS      : S   -> Utt ;                -- John walks
    UttQS     : QS  -> Utt ;                -- is it good
    UttImpSg  : Pol -> Imp -> Utt;          -- (don't) love yourself
    UttImpPl  : Pol -> Imp -> Utt;          -- (don't) love yourselves
    UttImpPol : Pol -> Imp -> Utt ;         -- (don't) sleep (polite)

-- There are also 'one-word utterances'. A typical use of them is
-- as answers to questions.
-- *Note*. This list is incomplete. More categories could be covered.
-- Moreover, in many languages e.g. noun phrases in different cases
-- can be used.

    UttIP     : IP   -> Utt ;               -- who
    UttIAdv   : IAdv -> Utt ;               -- why
    UttNP     : (a : NPType) -> NPTyped a -> Utt ;               -- this man -- sin man.
    UttAdv    : Adv -> Utt ;               -- here -- i sitt hus.
    UttVP     : VP   -> Utt ;               -- to sleep
    UttCN     : CN   -> Utt ;               -- house
    UttCard   : Card -> Utt ;               -- five
    UttAP     : (a : NPType) -> APTyped a -> Utt ;               -- fine --lika fin som sin syster
    UttInterj : Interj -> Utt ;             -- alas

-- The phrasal conjunction is optional. A sentence conjunction
-- can also be used to prefix an utterance.

    NoPConj   : PConj ;                      
    PConjConj : Conj -> PConj ;             -- and

-- The vocative is optional. Any noun phrase can be made into vocative,
-- which may be overgenerating (e.g. "I").

    NoVoc   : Voc ;
    VocNP   : NPTyped Subject -> Voc ;                   -- my friend

}
