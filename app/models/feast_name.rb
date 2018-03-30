class FeastName < ApplicationRecord
  belongs_to :feast
  belongs_to :name

  attr_accessor :other_name
  before_validation :handle_other_name

  serialize   :saint_attributes

  before_save :handle_saint_attributes

  ABBREVIATIONS = {}
  Kal::SaintAttributes::SAINT_ATTRIBUTES.each do |sa|
    ABBREVIATIONS[sa.code] = sa.abbreviation + '.' ####
  end
  ABBREVIATIONS.default = 'nil.' # temporary, related to hidden field issue

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

    def handle_saint_attributes
      self.saint_attributes ||= []

      # # get rid of hidden field?
      self.saint_attributes.delete('')
      true
    end
end
