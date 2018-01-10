class FeastName < ApplicationRecord
  belongs_to :feast
  belongs_to :name

  attr_accessor :other_name
  before_validation :handle_other_name

  serialize   :saint_attributes

  before_save :handle_empty_attributes

  # before_save :consolidate_saint_attributes
  # after_find  :populate_saint_attributes

  # Kal::SAINT_ATTRIBUTES.each do |s_a|
  #   attr_accessor s_a.english_word.to_sym
  # end

  SAINT_ATTRIBUTES = %w(
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
    pope
    presbyter
    prophet
    protomartyr
    recluse
    solitary
    subdeacon
    virgin
    widow
  )#.sort.freeze


  ABBREVIATIONS = %w(
    abb
    ap
    aep
    ep
    bd
    card
    cf
    diac
    erem
    m
    mon
    non
    pp
    pb
    proph
    protom
    reclus
    solit
    subdiac
    v
    vid
  )

  ABBREVIATE = SAINT_ATTRIBUTES.zip(ABBREVIATIONS).to_h

  private
    def handle_other_name
      return true if self.other_name.blank?
      new_name = Name.new(name: self.other_name)
      new_name.save
      self.name = new_name
    end

    def handle_empty_attributes
      saint_attributes ||= []
    end

    # def populate_saint_attributes

    #   Kal::SAINT_ATTRIBUTES.each do |s_a|
    #     sym1 = (s_a.english_word).to_sym
    #     sym2 = (s_a.english_word + '=').to_sym
    #     self.send(sym2, '1') if saint_attributes[sym1] == '1'
    #   end

    # def consolidate_saint_attributes
    #   self.saint_attributes = {}

    #   Kal::SAINT_ATTRIBUTES.each do |s_a|
    #     sym = (s_a.english_word).to_sym
    #     self.saint_attributes[sym1] == 1 if send(sym) == '1'
    #   end
end
