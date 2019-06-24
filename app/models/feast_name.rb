class FeastName < ApplicationRecord
  belongs_to :feast
  belongs_to :name
  belongs_to :name_date, counter_cache: :use_count

  attr_accessor :'_' #

  attr_accessor :other_name

  before_validation :handle_other_name

  before_validation :attach_name_date
  serialize   :saint_attributes

  before_save :handle_saint_attributes

  delegate :day_number, to: :feast, allow_nil: true, prefix: true
  delegate :month_number, to: :feast, allow_nil: true, prefix: true


  ABBREVIATIONS = {}
  Kal::SaintAttributes::SAINT_ATTRIBUTES.each do |sa|
    ABBREVIATIONS[sa.code] = sa.abbreviation + '.' ####
  end
  ABBREVIATIONS.default = ''

  def to_s
   name.to_s
  end

  private
    def handle_other_name
      return true if self.other_name.blank?
      new_name = Name.new(name: self.other_name)
      new_name.save
      self.name = new_name
      true
    end

    def handle_saint_attributes
      self.saint_attributes ||= []

      # # get rid of hidden field?
      self.saint_attributes.delete('')
      true
    end

    def attach_name_date
      self.name_date = NameDate.find_or_create_by(name: name, month: feast_month_number, day: feast_day_number)
    end
end
