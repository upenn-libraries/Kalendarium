class FeastName < ApplicationRecord
  belongs_to :feast
  belongs_to :name

  attr_accessor :other_name
  before_validation :handle_other_name

  serialize   :saint_attributes

  before_save :handle_empty_attributes


  # SAINT_ATTRIBUTES = %w(
  #   abbot/abbess
  #   apostle
  #   archbishop
  #   bishop
  #   blessed
  #   cardinal
  #   confessor
  #   deacon
  #   hermit
  #   martyr
  #   monk
  #   nun
  #   pope
  #   presbyter
  #   prophet
  #   protomartyr
  #   recluse
  #   solitary
  #   subdeacon
  #   virgin
  #   widow
  # )#.freeze


  # ABBREVIATIONS = %w(
  #   abb
  #   ap
  #   aep
  #   ep
  #   bd
  #   card
  #   cf
  #   diac
  #   erem
  #   m
  #   mon
  #   non
  #   pp
  #   pb
  #   proph
  #   protom
  #   reclus
  #   solit
  #   subdiac
  #   v
  #   vid
  # )

  # ABBREVIATE = SAINT_ATTRIBUTES.zip(ABBREVIATIONS).to_h


  ABBREVIATIONS = {}
  Kal::SaintAttributes::SAINT_ATTRIBUTES.each do |sa|
    ABBREVIATIONS[sa.code] = sa.abbreviation + '.' ####
  end

  def to_s
    sa_string = saint_attributes.map{ |sa| ABBREVIATIONS[sa] }.join(' ') unless saint_attributes.blank?
    sa_string ? "#{name}(#{sa_string})" : "#{name}"
  end


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
end
