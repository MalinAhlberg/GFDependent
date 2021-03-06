--# -path=.:../scandinavian:../common:../abstract:../../prelude

concrete LexiconSwe of Lexicon = CatSwe ** 
  open Prelude, ParadigmsSwe, IrregSwe in {

flags 
  optimize=values ;

lin
  airplane_N = regGenN "flygplan" neutrum ;
  answer_V2S = mkV2S (regV "svarar") (mkPrep "till") ;
  apartment_N = mk2N "l�genhet" "l�genheter" ;
  apple_N = regGenN "�pple" neutrum ;
  art_N = mk2N "konst" "konster" ;
  ask_V2Q = mkV2Q (regV "fr�gar") noPrep ;
  baby_N = regGenN "bebis" utrum ;
  bad_A = irregA "d�lig" "s�mre" "s�mst";
  bank_N = mk2N "bank" "banker" ;
  beautiful_A = mk3A "vacker" "vackert" "vackra" ;
  become_VA = mkVA (mkV "bli" "blir""bli" "blev" "blivit" "bliven") ;
  beer_N = regGenN "�l" neutrum ;
  beg_V2V = mkV2V (mkV "be" "ber""be" "bad" "bett" "bedd") noPrep (mkPrep "att") ;
  big_A = irregA "stor" "st�rre" "st�rst";
  bike_N = mk2N "cykel" "cyklar" ;
  bird_N = mk2N "f�gel" "f�glar" ;
  black_A = mk2A "svart" "svart" ;
  blue_A = mk2A "bl�" "bl�tt";
  boat_N = regGenN "b�t" utrum ;
  book_N = mkN "bok" "boken" "b�cker" "b�ckerna" ;
  boot_N = mk2N "st�vel" "st�vlar" ;
  boss_N = mk2N "chef" "chefer" ;
  boy_N = regGenN "pojke" utrum ;
  bread_N = regGenN "br�d" neutrum ;
  break_V2 = dirV2 (partV (mkV "sl�" "sl�r" "sl�" "slog" "slagit" "slagen") "s�nder") ;
  broad_A = mk2A "bred" "brett" ;
  brother_N2 = mkN2 ((mkN "bror" "brodern" "br�der" "br�derna")) (mkPrep "till") ;
  brown_A = regA "brun" ;
  butter_N = regGenN "sm�r" neutrum ;
  buy_V2 = dirV2 (mk2V "k�pa" "k�pte") ;
  camera_N = regGenN "kamera" utrum ;
  cap_N = regGenN "m�ssa" utrum ;
  car_N = regGenN "bil" utrum ;
  carpet_N = regGenN "matta" utrum ;
  cat_N = mk2N "katt" "katter" ;
  ceiling_N = regGenN "tak" neutrum ;
  chair_N = regGenN "stol" utrum ;
  cheese_N = regGenN "ost" utrum ;
  child_N = regGenN "barn" neutrum ;
  church_N = regGenN "kyrka" utrum ;
  city_N = mkN "stad" "staden" "st�der" "st�derna" ;
  clean_A = regA "ren" ;
  clever_A = regA "klok" ;
  close_V2 = dirV2 (mk2V "st�nga" "st�ngde") ;
  coat_N = regGenN "rock" utrum ;
  cold_A = regA "kall" ;
  come_V = komma_V ;
  computer_N = mk2N "dator" "datorer" ;
  country_N = mkN "land" "landet" "l�nder" "l�nderna" ;
  cousin_N = mk2N "kusin" "kusiner" ;
  cow_N = mk2N "ko" "kor" ;
  die_V = (mkV "d�" "d�r" "d�" "dog" "d�tt" "d�dd") ; ----
  distance_N3 = mkN3 (mk2N "avst�nd" "avst�nd") (mkPrep "fr�n") (mkPrep "till") ;
  dirty_A = regA "smutsig" ;
  doctor_N = mk2N "l�kare" "l�kare" ;
  dog_N = regGenN "hund" utrum ;
  door_N = regGenN "d�rr" utrum ;
  drink_V2 = dirV2 (irregV "dricka" "drack" "druckit") ;
  easy_A2V = mkA2V (mk2A "l�tt" "l�tt") (mkPrep "f�r") ;
  eat_V2 = dirV2 (irregV "�ta" "�t" "�tit") ;
  empty_A = mkA "tom" "tomt" "tomma" "tomma" "tommare" "tommast" "tommaste" ;
  enemy_N = regGenN "fiende" neutrum ;
  factory_N = mk2N "fabrik" "fabriker" ;
  father_N2 = mkN2 ((mkN "far" "fadern" "f�der" "f�derna")) (mkPrep "till") ;
  fear_VS = mkVS (regV "fruktar") ;
  find_V2 = dirV2 (irregV "finna" "fann" "funnit") ;
  fish_N = mk2N "fisk" "fiskar" ;
  floor_N = regGenN "golv" neutrum ;
  forget_V2 = dirV2 (mkV "gl�mma" "gl�mmer" "gl�m" "gl�mde" "gl�mt" "gl�md") ;
  fridge_N = regGenN "kylsk�p" neutrum ;
  friend_N = mkN "v�n" "v�nnen" "v�nner" "v�nnerna" ;
  fruit_N = mk2N "frukt" "frukter" ;
  fun_AV = mkAV (regA "rolig") ;
  garden_N = regGenN "tr�dg�rd" utrum ;
  girl_N = regGenN "flicka" utrum ;
  glove_N = regGenN "handske" utrum ;
  gold_N = regGenN "guld" neutrum ;
  good_A = mkA "god" "gott" "goda" "goda" "b�ttre" "b�st" "b�sta" ;
  go_V = (mkV "g�" "g�r" "g�" "gick" "g�tt" "g�ngen") ;
  green_A = regA "gr�n" ;
  harbour_N = regGenN "hamn" utrum;
  hate_V2 = dirV2 (regV "hatar") ;
  hat_N = regGenN "hatt" utrum ;
  hear_V2 = dirV2 (mkV "h�ra" "h�r" "h�r" "h�rde" "h�rt" "h�rd") ;
  hill_N = regGenN "kulle" utrum ;
--  hope_VS = mkVS ((regV "�nskar")) ;
  hope_VS = mkVS (depV (regV "hoppar")) ;
  horse_N = regGenN "h�st" utrum ;
  hot_A = regA "het" ;
  house_N = regGenN "hus" neutrum ;
  important_A = regA "viktig" ;
  industry_N = mk2N "industri" "industrier" ; ---- "ien" ??
  iron_N = regGenN "j�rn" neutrum ;
  king_N = (regGenN "kung" utrum) ;
  know_V2 = mkV2 (mkV "k�nner") ;
  know_VQ = mkVQ (mkV "veta" "vet" "vet" "visste" "vetat" "visst") ;
  know_VS = mkVS (mkV "veta" "vet" "vet" "visste" "vetat" "visst") ;
  lake_N = mkN "sj�" "sj�n" "sj�ar" "sj�arna" ;
  lamp_N = regGenN "lampa" utrum;
  learn_V2 = dirV2 (reflV (mkV "l�ra" "l�r" "l�r" "l�rde" "l�rt" "l�rd")) ;
  leather_N = mkN "l�der" "l�dret" "l�der" "l�dren" ;
  leave_V2 = dirV2 (regV "l�mnar") ;
  like_V2 = mkV2 (partV (mk2V "tycka" "tyckte") "om") ;
  listen_V2 = mkV2 (regV "lyssnar") (mkPrep "p�") ;
  live_V = (irregV "leva" "levde" "levt") ; ---- ?
  long_A = irregA "l�ng" "l�ngre" "l�ngst" ;
  lose_V2 = dirV2 (regV "f�rlora") ;
  love_N = regGenN "k�rlek" utrum ;
  love_V2 = dirV2 (regV "�lska") ;
  man_N = (mkN "man" "mannen" "m�n" "m�nnen") ;
  married_A2 = mkA2 (mk2A "gift" "gift") (mkPrep "med") ;
  meat_N = regGenN "k�tt" neutrum ;
  milk_N = regGenN "mj�lk" utrum ; ---- -ar?
  moon_N = regGenN "m�ne" utrum ;
  mother_N2 = mkN2 (mkN "mor" "modern" "m�drar" "m�drarna") (mkPrep "till") ;
  mountain_N = regGenN "berg" neutrum ;
  music_N = mk2N "musik" "musiker" ; ---- er ?
  narrow_A = regA "smal" ;
  new_A = mkA "ny" "nytt" "nya" "nya" "nyare" "nyast" "nyaste" ;
  newspaper_N = regGenN "tidning" utrum ;
  oil_N = regGenN "olja" utrum ;
  old_A = mkA "gammal" "gammalt" "gamla" "gamla" "�ldre" "�ldst" "�ldsta" ;
  open_V2 = dirV2 (regV "�ppna") ;
  paint_V2A = mkV2A (regV "m�la") noPrep ;
  paper_N = mkN "papper" "pappret" "papper" "pappren" ;
  paris_PN = regGenPN "Paris" neutrum ;
  peace_N = regGenN "fred" utrum ; ---- ar?
  pen_N = regGenN "penna" utrum ;
  planet_N = mk2N "planet" "planeter" ;
  plastic_N = mk2N "plast" "plaster" ;
  play_V2 = dirV2 (regV "spela") ;
  policeman_N = mk2N "polis" "poliser" ;
  priest_N = mk2N "pr�st" "pr�ster" ;
  probable_AS = mkAS (regA "sannolik") ;
  queen_N = regGenN "drottning" utrum ;
  radio_N = mkN "radio" "radion" "radioapparater" "radioapparaterna" ; -- SAOL
  rain_V0 = mkV0 (regV "regna") ;
  read_V2 = dirV2 (mk2V "l�sa" "l�ste") ;
  red_A = mk2A "r�d" "r�tt" ;
  religion_N = mk2N "religion" "religioner" ;
  restaurant_N = mk2N "restaurang" "restauranger" ;
  river_N = mkN "�" "�n" "�ar" "�arna" ;
  rock_N = mkN "sten" "stenen" "stenar" "stenarna" ;
  roof_N = regGenN "tak" neutrum ;
  rubber_N = mkN "gummi" "gummit" "gummin" "gummina" ;
  run_V = (irregV "springa" "sprang" "sprungit") ;
  say_VS = mkVS (mkV "s�ga" "s�ger" "s�g" "sade" "sagt" "sagd") ;
  school_N = regGenN "skola" utrum;
  science_N = mk2N "vetenskap" "vetenskaper" ;
  sea_N = mkN "hav" "hav" ;
  seek_V2 = dirV2 (mk2V "s�ka" "s�kte") ;
  see_V2 = dirV2 (mkV "se" "ser" "se" "s�g" "sett" "sedd") ;
  sell_V3 = dirV3 (irregV "s�lja" "s�lde" "s�lt") (mkPrep "till") ;
  send_V3 = dirV3 (regV "skicka") (mkPrep "till") ;
  sheep_N = mk2N "f�r" "f�r" ;
  ship_N = regGenN "skepp" neutrum ;
  shirt_N = regGenN "skjorta" utrum ;
  shoe_N = mk2N "sko" "skor" ;
  shop_N = mk2N "aff�r" "aff�rer" ;
  short_A = regA "kort" ;
  silver_N = mkN "silver" "silvret" "silver" "silvren" ;
  sister_N = mk2N "syster" "systrar" ;
  sleep_V = (irregV "sova" "sov" "sovit") ;
  small_A = mkA "liten" "litet" "lilla" "sm�" "mindre" "minst" "minsta" ;
  snake_N = regGenN "orm" utrum ;
  sock_N = regGenN "strumpa" utrum ;
  speak_V2 = dirV2 (regV "tala") ;
  star_N = regGenN "stj�rna" utrum ;
  steel_N = regGenN "st�l" utrum ;
  stone_N = mkN "sten" "stenen" "stenar" "stenarna" ;
  stove_N = regGenN "spis" utrum ;
  student_N = mk2N "student" "studenter" ;
  stupid_A = mk3A "dum" "dumt" "dumma" ;
  sun_N = regGenN "sol" utrum ;
  switch8off_V2 = dirV2 (partV (irregV "st�nga" "st�ngde" "st�ngt") "av") ;
  switch8on_V2 = dirV2 (partV (irregV "sl�" "slog" "slagit") "p�") ;
  table_N = regGenN "bord" neutrum ;
  talk_V3 = mkV3 (regV "prata") (mkPrep "till") (mkPrep "om") ;
  teacher_N = mk2N "l�rare" "l�rare" ;
  teach_V2 = dirV2 (regV "undervisa") ;
  television_N = mk2N "television" "televisioner" ;
  thick_A = regA "tjock" ;
  thin_A = mk2A "tunn" "tunt" ;
  train_N = regGenN "t�g" neutrum ;
  travel_V = mk2V "resa" "reste" ;
  tree_N = regGenN "tr�d" neutrum ;
  ----  trousers_N = regGenN "trousers" ; ---- pl t !
  ugly_A = regA "ful" ;
  understand_V2 = dirV2 (mkV "f�rst�" "f�rst�r" "f�rst�" "f�rstod" "f�rst�tt" "f�rst�dd") ;
  university_N = regGenN "universitet" neutrum ;
  village_N = mkN "by" "byn" "byar" "byarna" ;
  wait_V2 = mkV2 (regV "v�nta") (mkPrep "p�") ;
  walk_V = (mkV "g�" "g�r" "g�" "gick" "g�tt" "g�ngen") ;
  warm_A = regA "varm" ;
  war_N = regGenN "krig" neutrum ;
  watch_V2 = mkV2 (regV "titta") (mkPrep "p�") ;
  water_N = mkN "vatten" "vattnet" "vatten" "vattnen" ;
  white_A = regA "vit" ;
  window_N = mkN "f�nster" "f�nstret" "f�nster" "f�nstren" ;
  wine_N = mkN "vin" "vinet" "viner" "vinerna" ; ----
  win_V2 = dirV2 (irregV "vinna" "vann" "vunnit") ;
  woman_N = regGenN "kvinna" utrum ;
  wonder_VQ = mkVQ (regV "undra") ;
  wood_N = mkN "tr�" "tr�et" "tr�en" "tr�ena" ; ---- ?
  write_V2 = dirV2 (irregV "skriva" "skrev" "skrivit") ;
  yellow_A = regA "gul" ;
  young_A = irregA "ung" "yngre" "yngst" ;

  do_V2 = dirV2 g�ra_V ;
  now_Adv = mkAdv "nu" ;
  already_Adv = mkAdv "redan" ;
  song_N = mk2N "s�ng" "s�nger" ;
  add_V3 = mkV3 (partV (irregV "l�gga" "lade" "lagt") "till") noPrep (mkPrep "till") ;
  number_N = mkN "nummer" "numret" "numren" "numren" ;
  put_V2 = mkV2 (mkV "s�tta" "s�tter" "s�tt" "satte" "satt" "satt") noPrep ;
  stop_V = regV "stanna" ;
  jump_V = regV "hoppa" ;

  left_Ord = {s = "v�nstra" ; isDet = True} ;
  right_Ord = {s = "h�gra" ; isDet = True} ;
  far_Adv = mkAdv "l�ngt" ;
  correct_A = regA "riktig" ;
  dry_A = regA "torr" ;
  dull_A = mk2A "sl�" "sl�tt";
  full_A = regA "full" ;
  heavy_A = irregA "tung" "tyngre" "tyngst" ;
  near_A = mkA "n�ra" "n�ra" "n�ra" "n�ra" "n�rmare" "n�rmast" "n�rmaste" ;
  rotten_A = mk3A "rutten" "ruttet" "ruttna" ;
  round_A = regA "rund" ;
  sharp_A = regA "vass" ;
  smooth_A = regA "sl�t" ;
  straight_A = regA "rak" ;
  wet_A = regA "v�t" ;
  wide_A = mk2A "bred" "brett" ;
  animal_N = mk2N "djur" "djur" ;
  ashes_N = mk2N "aska" "askor" ;
  back_N = mk2N "rygg" "ryggar" ;
  bark_N = mk2N "bark" "barkar" ;
  belly_N = mk2N "mage" "magar" ;
  blood_N = mk2N "blod" "blod" ;
  bone_N = mk2N "ben" "ben" ;
  breast_N = mk2N "br�st" "br�st" ;
  cloud_N = mk2N "moln" "moln" ;
  day_N = mk2N "dag" "dagar" ;
  dust_N = mk2N "damm" "damm" ;
  ear_N = mkN "�ra" "�rat" "�ron" "�ronen" ;
  earth_N = mk2N "jord" "jordar" ;
  egg_N = mk2N "�gg" "�gg" ;
  eye_N = mkN "�ga" "�gat" "�gon" "�gonen" ;
  fat_N = mk2N "fett" "fett" ;
  feather_N = mk2N "fj�der" "fj�drar" ;
  fingernail_N = mkN "nagel" "nageln" "naglar" "naglarna";
  fire_N = mk2N "eld" "eldar" ;
  flower_N = mk2N "blomma" "blommor" ;
  fog_N = mk2N "dimma" "dimmor" ;
  foot_N = mk2N "fot" "f�tter" ;
  forest_N = mk2N "skog" "skogar" ;
  grass_N = mk2N "gr�s" "gr�s" ;
  guts_N = mk2N "in�lva" "in�lvor" ;
  hair_N = mk2N "h�r" "h�r" ;
  hand_N = mk2N "hand" "h�nder" ;
  head_N = mkN "huvud" "huvudet" "huvuden" "huvudena" ;
  heart_N = mkN "hj�rta" "hj�rtat" "hj�rtan" "hj�rtana" ;
  horn_N = mk2N "horn" "horn" ;
  husband_N = (mk2N "make" "makar") ;
  ice_N = mk2N "is" "isar" ;
  knee_N = mkN "kn�" "kn�et" "kn�n" "kn�na" ;
  leaf_N = mk2N "l�v" "l�v" ;
  leg_N = mk2N "ben" "ben" ;
  liver_N = mkN "lever" "levern" "levrar" "levrarna";
  louse_N = mkN "lus" "lusen" "l�ss" "l�ssen" ;
  mouth_N = mkN "mun" "munnen" "munnar" "munnarna" ;
  name_N = mk2N "namn" "namn" ;
  neck_N = mk2N "nacke" "nackar" ;
  night_N = mk2N "natt" "n�tter" ;
  nose_N = mk2N "n�sa" "n�sor" ;
  person_N = mk2N "person" "personer" ;
  rain_N = mk2N "regn" "regn" ;
  road_N = mk2N "v�g" "v�gar" ;
  root_N = mk2N "rot" "r�tter" ;
  rope_N = mk2N "rep" "rep" ;
  salt_N = mkN "salt" "saltet" "salter" "salterna";
  sand_N = mk2N "sand" "sander" ;
  seed_N = mkN "fr�" "fr�et" "fr�n" "fr�na" ;
  skin_N = mk2N "skinn" "skinn" ;
  sky_N = mk2N "himmel" "himlar" ;
  smoke_N = mk2N "r�k" "r�kar" ;
  snow_N = mkN "sn�" "sn�n" "sn�er" "sn�erna" ;
  stick_N = mk2N "pinne" "pinnar" ;
  tail_N = mk2N "svans" "svansar" ;
  tongue_N = mk2N "tunga" "tungor" ;
  tooth_N = mk2N "tand" "t�nder" ;
  wife_N = mk2N "fru" "fruar" ;
  wind_N = mk2N "vind" "vindar" ;
  wing_N = mk2N "vinge" "vingar" ;
  worm_N = mk2N "mask" "maskar" ;
  year_N = mk2N "�r" "�r" ;
  bite_V2 = dirV2 (bita_V) ;
  blow_V = mk2V "bl�sa" "bl�ste" ;
  burn_V = brinna_V ; -- FIXME: br�nna?
  count_V2 = dirV2 (regV "r�kna") ;
  cut_V2 = dirV2 (sk�ra_V) ;
  dig_V = mk2V "gr�va" "gr�vde" ;
  fall_V = falla_V ;
  fear_V2 = dirV2 (regV "frukta") ;
  float_V = flyta_V ;
  flow_V = rinna_V ;
  fly_V = flyga_V ;
  freeze_V = frysa_V ;
  give_V3 = dirV3 giva_V (mkPrep "till");
  hit_V2 = dirV2 (sl�_V) ;
  hold_V2 = dirV2 (h�lla_V) ;
  hunt_V2 = dirV2 (regV "jaga") ;
  kill_V2 = dirV2 (regV "d�da") ;
  laugh_V = regV "skratta" ;
  lie_V = ligga_V ;
  play_V = mk2V "leka" "lekte" ;
  pull_V2 = dirV2 (draga_V) ;
  push_V2 = dirV2 (mk2V "trycka" "tryckte") ;
  rub_V2 = dirV2 (gnida_V) ;
  scratch_V2 = dirV2 (regV "klia") ;
  sew_V = sy_V ;
  sing_V = sjunga_V ;
  sit_V = sitta_V ;
  smell_V = regV "lukta" ;
  spit_V = regV "spotta" ;
  split_V2 = dirV2 (klyva_V) ;
  squeeze_V2 = dirV2 (kl�mma_V) ;
  stab_V2 = dirV2 (sticka_V) ;
  stand_V = st�_V ;
  suck_V2 = dirV2 (suga_V) ;
  swell_V = sv�lla_V ;
  swim_V = regV "simma" ;
  think_V = mk2V "t�nka" "t�nkte" ;
  throw_V2 = dirV2 (regV "kasta") ;
  tie_V2 = dirV2 (knyta_V) ;
  turn_V = v�nda_V ;
  vomit_V = mk2V "spy" "spydde" ;
  wash_V2 = dirV2 (regV "tv�tta") ;
  wipe_V2 = dirV2 (regV "torka") ;

  breathe_V = depV (regV "anda") ;
  fight_V2 = 
    mkV2 (mkV "sl�ss" "sl�ss" "sl�ss" "slogs" "slagits" "slagen") (mkPrep "med") ;

  grammar_N = mk1N "grammatikerna" ;
  language_N = mk2N "spr�k" "spr�k" ;
  rule_N = mkN "regel" "regeln" "regler" "reglerna" ;

    john_PN = regPN "Johan" ;
    question_N = regN "fr�ga" ;
    ready_A = regA "f�rdig" ;
    reason_N = regN "anledning" ;
    today_Adv = mkAdv "idag" ;
    uncertain_A = mk3A "os�ker" "os�kert" "os�kra" ;


} ;
