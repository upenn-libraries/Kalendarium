module Kal
  module SaintAttributes

    SaintAttribute = Struct.new(:code, :name, :abbreviation)

    SAINT_ATTRIBUTES = [
      SaintAttribute.new('abbot', 'abbot', 'abb'),
      SaintAttribute.new('abbess', 'abbess', 'abb'),
      SaintAttribute.new('apostle', 'apostle', 'ap'),
      SaintAttribute.new('archbishop', 'archbishop', 'aep'),
      SaintAttribute.new('bishop', 'bishop', 'ep'),
      SaintAttribute.new('blessed', 'blessed', 'bd'),
      SaintAttribute.new('cardinal', 'cardinal', 'card'),
      SaintAttribute.new('confessor', 'confessor', 'cf'),
      SaintAttribute.new('deacon', 'deacon', 'diac'),
      SaintAttribute.new('hermit', 'hermit', 'erem'),
      SaintAttribute.new('martyr', 'martyr', 'm'),
      SaintAttribute.new('monk', 'monk', 'mon'),
      SaintAttribute.new('nun', 'nun', 'non'),
      SaintAttribute.new('pope', 'pope', 'pp'),
      SaintAttribute.new('priest', 'priest', 'pb'),
      SaintAttribute.new('prophet', 'prophet', 'proph'),
      SaintAttribute.new('recluse', 'recluse', 'reclus'),
      SaintAttribute.new('solitary', 'solitary', 'solit'),
      SaintAttribute.new('subdeacon', 'subdeacon', 'subdiac'),
      SaintAttribute.new('virgin', 'virgin', 'v'),
      SaintAttribute.new('widow', 'widow', 'vid'),



      SaintAttribute.new(*%w|duke duke duc|),
      SaintAttribute.new(*%w|king king re|),
      SaintAttribute.new(*%w|queen queen regin|),

      SaintAttribute.new(*%w|evangelist evangelist evangel|)
    ]


    # CLERICAL_TITLES = %w(subdeacon deacon priest bishop archbishop cardinal pope)
    # MONASTIC_TITLES = %w(monk nun abbot abbess hermit recluse)
    # BIBLICAL_ROLES  = %w(apostle evangelist prophet angel)
    # SECULAR_TITLES  = %w(king queen duke duchess)
    # QUALIFIERS      = %w(martyr protomartyr confessor widow)

    # *** possibilities ***
    # QUALIFIERS_ = %w(martyr protomartyr confessor widow).map do |a|
    #   SAINT_ATTRIBUTES.find{ |s_a| s_a.code == a }
    # end

    # QUALIFIERS__ = SAINT_ATTRIBUTES.select do |s_a|
    #   w(martyr protomartyr confessor widow).include?(s_a.code)
    # end

    # QUALIFIERS___ = attribute_group(%w|martyr protomartyr confessor widow|)
    # def self.attribute_group(attribute_codes)
    #   SAINT_ATTRIBUTES.select{ |s_a| attribute_codes.include?(s_a.code) }
    # end

    # def self.attribute_group(attribute_codes)
    #   SAINT_ATTRIBUTES.select{ |s_a| attribute_codes.include?(s_a.code) }.map{ |a| a.name.humanize }
    # end
    # def self.attribute_group(attribute_codes)
    #   attribute_codes.map(&:humanize)
    # end

    def self.attribute_group(attribute_codes)
      SAINT_ATTRIBUTES.select{ |s_a| attribute_codes.include?(s_a.code) }.map do |a|
        #[a.name.humanize, a.code]
        a.code
      end
    end

    CLERICAL_TITLES = attribute_group(%w|subdeacon deacon priest bishop archbishop cardinal pope|)
    MONASTIC_TITLES = attribute_group(%w|monk nun abbot abbess hermit recluse|)
    BIBLICAL_ROLES  = attribute_group(%w|apostle evangelist prophet angel|)
    SECULAR_TITLES  = attribute_group(%w|king queen duke|)
    QUALIFIERS      = attribute_group(%w|martyr confessor virgin widow|)

    OPTGROUPS = {
      'Clerical titles' => CLERICAL_TITLES,
      'Monastic titles' => MONASTIC_TITLES,
      'Biblical roles'  => BIBLICAL_ROLES,
      'Secular titles'  => SECULAR_TITLES,
      'Qualifiers'      => QUALIFIERS
    }
  end
end




  # SaintAttribute = Struct.new(:english_word, :abbreviations, :category)


  # SAINT_ATTRIBUTES = [
  #   SaintAttribute.new('abbot/abbess', ['abb'],    :title),
  #   SaintAttribute.new('apostle',      ['ap'],     :title),
  #   SaintAttribute.new('archbishop',   ['archep', 'aep'], :title),

  #   SaintAttribute.new('martyr',       ['m'],      :qualifier),

  #   SaintAttribute.new('virgin',       ['v'],      :qualifier),
  #   SaintAttribute.new('widow',        ['vid'],    :qualifier)
  # ]

  # SAINT_ATTRIBUTE_SYMBOLS = SAINT_ATTRIBUTES.map(&:english_word).map(&:to_sym)




=begin
  abbot/abbess
  apostle
  archbishop
  bishop
  blessed
  cardinal
  confessor
  deacon
  hermit
  martyr
  monk
  nun
  presbyter
  pope
  prophet
  protomartyr
  recluse
  solitary
  subdeacon
  solitary
  virgin
  widow
=end


# {
#   pp:      :pope,
#   card:    :cardinal,
#   aep:     :archbishop,
#   ep:      :bishop,

#   pb:      :presbyter,
#   diac:    :deacon,
#   subdiac: :subdeacon,

#   abb:     :abbot_abbess, # only occupation for females? # maybe not
#   mon:     :monk,
# # non:     :nun,
#   solit:   :soliary,
#   erem:    :hermit,
#   reclus:  :recluse,

#   proph:   :prophet,
#   ap:      :apostle,



#   m:       :martyr,
#   protom:  :protomartyr,
#   cf:      :confessor,

#   v:       :virgin,
#   vid:     :widow

# }

# {
#   regis:     :king,
#   ducis:     :duke,

#   doctoris:  :doctor,

#   conversi:  :convert,
#   peregrini: :pilgrim,

#   pueri_a_Judeis_occisi: :boy_killed_by_the_jews
# }


# {
#   ord_s_Franc: :franciscan,
#   ord_fr_min:  :franciscan,

#   ord_s_Ben:   :benedictine,
#   ord_s_Bened: :benedictine,

#   ord_s_Domin: :dominican,
#   ord_predic:  :dominican,

#   ord_Cist:    :cistercian,
#   ord_Cisterc: :cistercian
# }



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



Wieck's examples--
  title:     w(pope archbishop bishop),
  qualifier: w(martyr virgin widow)


intra-line coloring p.8 and passim

Abreviations p.43!

=end






