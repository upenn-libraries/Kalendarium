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

    def self.attribute_group(attribute_codes)
      SAINT_ATTRIBUTES.select{ |s_a| attribute_codes.include?(s_a.code) }.map(&:code)
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

