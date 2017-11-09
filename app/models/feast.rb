class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  serialize :saint_attributes

  ############
  before_save :consolidate_saint_attributes
  after_find  :populate_saint_attributes

  attr_accessor :st_attr1
  attr_accessor :st_attr2
  # ...
  ############

  SAINT_NAMES = %w(
    Matthew
    Mark
    Luke
    John
    Paul
    George
    Ringo
    Yoda
    Obi-Wan
  )


  def to_s
    "Feast of St. #{saint_name}: \"#{transcription.to_s[0..80]}\""
  end

  private
    def populate_saint_attributes
    end

    def consolidate_saint_attributes
    end
end
