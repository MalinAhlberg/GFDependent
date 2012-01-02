--1 The construction of verb phrases

abstract Verb = Cat ** {

--2 Complementization rules

-- Verb phrases are constructed from verbs by providing their
-- complements. There is one rule for each verb category.

  data
    UseV     : V   -> VP ;        -- sleep

    ComplVV  : VV  -> VP -> VP ;  -- want to run
    ComplVS  : VS  -> S  -> VP ;  -- say that she runs
    ComplVQ  : VQ  -> QS -> VP ;  -- wonder who runs
    ComplVA  : VA  -> APTyped Object -> VP ;  -- they become red

    SlashV2a : V2        -> VPSlash ;  -- love (it)
    Slash2V3 : V3  -> NPTyped Object -> VPSlash ;  -- give it (to her)
    Slash3V3 : V3  -> NPTyped Object -> VPSlash ;  -- give (it) to her

    SlashV2V : V2V -> VP -> VPSlash ;  -- beg (her) to go
    SlashV2S : V2S -> S  -> VPSlash ;  -- answer (to him) that it is good
    SlashV2Q : V2Q -> QS -> VPSlash ;  -- ask (him) who came
    SlashV2A : V2A -> APTyped Object -> VPSlash ;  -- paint (it) red

    ComplSlash : VPSlash -> NPTyped Object -> VP ; -- love it

    SlashVV    : VV  -> VPSlash -> VPSlash ;       -- want to buy
    SlashV2VNP : V2V -> NPTyped Object -> VPSlash -> VPSlash ; -- beg me to buy

--2 Other ways of forming verb phrases

-- Verb phrases can also be constructed reflexively and from
-- copula-preceded complements.

    ReflVP   : VPSlash -> VP ;         -- love himself
    UseComp  : Comp -> VP ;            -- be warm

-- Passivization of two-place verbs is another way to use
-- them. In many languages, the result is a participle that
-- is used as complement to a copula ("is used"), but other
-- auxiliary verbs are possible (Ger. "wird angewendet", It.
-- "viene usato"), as well as special verb forms (Fin. "käytetään",
-- Swe. "används").
--
-- *Note*. the rule can be overgenerating, since the $V2$ need not
-- take a direct object.

    PassV2   : V2 -> VP ;               -- be loved

-- Adverbs can be added to verb phrases. Many languages make
-- a distinction between adverbs that are attached in the end
-- vs. next to (or before) the verb.

    AdvVP    : VP -> AdvTyped Object -> VP ;        -- sleep here
    AdVVP    : AdV -> VP -> VP ;        -- always sleep

    AdvVPSlash : VPSlash -> AdvTyped Object -> VPSlash ;  -- use (it) here
    AdVVPSlash : AdV -> VPSlash -> VPSlash ;  -- always use (it)
   

-- *Agents of passives* are constructed as adverbs with the
-- preposition [Structural Structural.html]$.8agent_Prep$.


--2 Complements to copula

-- Adjectival phrases, noun phrases, and adverbs can be used.

    CompAP   : APTyped Object -> Comp ;            -- (be) small
    CompNP   : NPTyped Object  -> Comp ;            -- (be) the man
    CompAdv  : AdvTyped Object -> Comp ;            -- (be) here
    CompCN   : CN  -> Comp ;            -- (be) a man/men

-- Copula alone

    UseCopula : VP ;                    -- be
}
