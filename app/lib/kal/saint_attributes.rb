SaintAttribute = Struct.new(:english_word, :abbreviation, :category)

SAINT_ATTRIBUTES = [
  SaintAttribute.new()
]

{
  pp:      :pope,
  card:    :cardinal,
  aep:     :archbishop,
  ep:      :bishop,

  pb:      :presbyter,
  diac:    :deacon,
  subdiac: :subdeacon,

  abb:     :abbot_abbess, # only occupation for females? # maybe not
  mon:     :monk,
# non:     :nun,
  solit:   :soliary,
  erem:    :hermit,
  reclus:  :recluse,

  proph:   :prophet,
  ap:      :apostle,



  m:       :martyr,
  protom:  :protomartyr,
  cf:      :confessor,

  v:       :virgin,
  vid:     :widow

}

{
  regis:     :king,
  ducis:     :duke,

  doctoris:  :doctor,

  conversi:  :convert,
  peregrini: :pilgrim,

  pueri_a_Judeis_occisi: :boy_killed_by_the_jews
}


{
  ord_s_Franc: :franciscan,
  ord_fr_min:  :franciscan,

  ord_s_Ben:   :benedictine,
  ord_s_Bened: :benedictine,

  ord_s_Domin: :dominican,
  ord_predic:  :dominican,

  ord_Cist:    :cistercian,
  ord_Cisterc: :cistercian
}



# Salome and Juditha  Virgin | widow | recluse    G 6439 | 4138 b. Salomes v. et Judithe vid. reclus. Juni 29: [Regensburg, Altaich] A.S. | Judithe s. Salomes et Judithe (Juni 29).
# Rita (Margarita)  widow | Eremite   both  6254  b. Rite (Margarite) vid. ord. erem. s. August. (+ 1456) Mai 22: [Cascia] A.S.

# bishop + presbyter coexist

=begin

  abbot
  archbishop
  cardinal
  confessor
  diaconus (deacon)
  episcopus (bishop)
  eremite (hermit)
  martyr
  monachus (monk)
  presbyter
  pope
  protomartyr
  virgin
  vidua (widow)


  occupation:

    church_hierarchy:
      pope
      cardinal
      archbishop
      bishop
      presbyter #?
      deacon    #?
      subdeacon

    ascetic:
      abbot  #?abbess
      monk
      hermit
      recluse

    special
      prophet
      apostle

  death:
    martyr
    protomartyr
    confessor


  female_status:
    virgin
    widow





=end