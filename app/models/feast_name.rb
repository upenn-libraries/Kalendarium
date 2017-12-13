class FeastName < ApplicationRecord
  belongs_to :feast
  belongs_to :name

  serialize   :saint_attributes
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
  ).sort.freeze

  private
    # def populate_saint_attributes

    #   Kal::SAINT_ATTRIBUTES.each do |s_a|
    #     sym1 = (s_a.english_word).to_sym
    #     sym2 = (s_a.english_word + '=').to_sym
    #     self.send(sym2, '1') if saint_attributes[sym1] == '1'
    #   end

    #   # self.st_attr_abb    = '1' if saint_attributes[:st_attr_abb]    == '1'
    #   # self.st_attr_aep    = '1' if saint_attributes[:st_attr_aep]    == '1'
    #   # self.st_attr_card   = '1' if saint_attributes[:st_attr_card]   == '1'
    #   # self.st_attr_cf     = '1' if saint_attributes[:st_attr_cf]     == '1'
    #   # self.st_attr_diac   = '1' if saint_attributes[:st_attr_diac]   == '1'
    #   # self.st_attr_ep     = '1' if saint_attributes[:st_attr_ep]     == '1'
    #   # self.st_attr_erem   = '1' if saint_attributes[:st_attr_erem]   == '1'
    #   # self.st_attr_m      = '1' if saint_attributes[:st_attr_m]      == '1'
    #   # self.st_attr_mon    = '1' if saint_attributes[:st_attr_mon]    == '1'
    #   # self.st_attr_pb     = '1' if saint_attributes[:st_attr_pb]     == '1'
    #   # self.st_attr_pp     = '1' if saint_attributes[:st_attr_pp]     == '1'
    #   # self.st_attr_protom = '1' if saint_attributes[:st_attr_protom] == '1'
    #   # self.st_attr_v      = '1' if saint_attributes[:st_attr_v]      == '1'
    #   # self.st_attr_vid    = '1' if saint_attributes[:st_attr_vid]    == '1'
    # end

    # def consolidate_saint_attributes
    #   self.saint_attributes = {}

    #   Kal::SAINT_ATTRIBUTES.each do |s_a|
    #     sym = (s_a.english_word).to_sym
    #     self.saint_attributes[sym1] == 1 if send(sym) == '1'
    #   end

    #   # self.saint_attributes = {}
    #   # self.saint_attributes[:st_attr_abb]    = '1' if st_attr_abb    == '1'
    #   # self.saint_attributes[:st_attr_aep]    = '1' if st_attr_aep    == '1'
    #   # self.saint_attributes[:st_attr_card]   = '1' if st_attr_card   == '1'
    #   # self.saint_attributes[:st_attr_cf]     = '1' if st_attr_cf     == '1'
    #   # self.saint_attributes[:st_attr_diac]   = '1' if st_attr_diac   == '1'
    #   # self.saint_attributes[:st_attr_ep]     = '1' if st_attr_ep     == '1'
    #   # self.saint_attributes[:st_attr_erem]   = '1' if st_attr_erem   == '1'
    #   # self.saint_attributes[:st_attr_m]      = '1' if st_attr_m      == '1'
    #   # self.saint_attributes[:st_attr_mon]    = '1' if st_attr_mon    == '1'
    #   # self.saint_attributes[:st_attr_pb]     = '1' if st_attr_pb     == '1'
    #   # self.saint_attributes[:st_attr_pp]     = '1' if st_attr_pp     == '1'
    #   # self.saint_attributes[:st_attr_protom] = '1' if st_attr_protom == '1'
    #   # self.saint_attributes[:st_attr_v]      = '1' if st_attr_v      == '1'
    #   # self.saint_attributes[:st_attr_vid]    = '1' if st_attr_vid    == '1'
    # end
end
