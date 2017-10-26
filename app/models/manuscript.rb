class Manuscript < ApplicationRecord
  validates_presence_of :name
  serialize :columns

  attr_accessor :column1
  attr_accessor :column2
  attr_accessor :column3
  attr_accessor :column4
  attr_accessor :column5

  after_find  :populate_columns
  before_save :consolidate_columns

  NUMBERING_METHODS = %w(Foliated Paginated)

  LANGUAGES = %w(English French Italian Spanish German Latin Klingon)

  COLUMN_TYPES = ['Golden Number', 'Dominical Letter', 'Day', 'Roman Day', 'Text']


  def to_s
    name
  end

  private
    def populate_columns
      self.column1 = columns[0]
      self.column2 = columns[1]
      self.column3 = columns[2]
      self.column4 = columns[3]
      self.column5 = columns[4]
    end

    def consolidate_columns
      self.columns = []
      self.columns[0] = column1
      self.columns[1] = column2
      self.columns[2] = column3
      self.columns[3] = column4
      self.columns[4] = column5
    end
end

