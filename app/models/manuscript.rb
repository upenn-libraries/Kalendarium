class Manuscript < ApplicationRecord
  validates_presence_of :name
  serialize :columns
  serialize :color_weighting

  attr_accessor :column1
  attr_accessor :column2
  attr_accessor :column3
  attr_accessor :column4
  attr_accessor :column5

  attr_accessor :color_weighting_black
  attr_accessor :color_weighting_blue
  attr_accessor :color_weighting_green
  attr_accessor :color_weighting_pink
  attr_accessor :color_weighting_red
  attr_accessor :color_weighting_purple
  attr_accessor :color_weighting_gold

  after_find  :populate_columns
  after_find  :populate_color_weighting
  before_save :consolidate_columns
  before_save :consolidate_color_weighting

  NUMBERING_METHODS = %w(Foliated Paginated)

  LANGUAGES = %w(English French Italian Spanish German Latin Klingon)

  COLUMN_TYPES = ['Golden Number', 'Dominical Letter', 'Day', 'Roman Day', 'Text']

  # COLOR_CODES = {
  #   black:  [  0,   0,   0],
  #   blue:   [  0,   0, 255],
  #   green:  [  0, 128,   0],
  #   pink:   [218, 112, 214],
  #   red:    [255,   0,   0],
  #   purple: [128,   0, 128],
  #   gold:   [205, 133,  63]
  # }

  # 'grade_black':  { name:'Black/Brown',  code:'Ni', rgb:'rgb(0, 0, 0)'},
  # 'grade_blue':   { name:'Blue',         code:'Li', rgb:'rgb(0, 0, 255)'},
  # 'grade_green':  { name:'Green',        code:'Vi', rgb:'rgb(0, 128, 0)'},
  # 'grade_pink':   { name:'Pink',         code:'Ro', rgb:'rgb(218, 112, 214)'},
  # 'grade_red':    { name:'Red',          code:'Ru', rgb:'rgb(255, 0, 0)'},
  # 'grade_purple': { name:'Purple',       code:'Pu', rgb:'rgb(128, 0, 128)'},
  # 'grade_gold':   { name:'Gold',         code:'Au', rgb:'rgb(205, 133, 63)'}


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

    def populate_color_weighting
      self.color_weighting_black  = color_weighting[:black]
      self.color_weighting_blue   = color_weighting[:blue]
      self.color_weighting_green  = color_weighting[:green]
      self.color_weighting_pink   = color_weighting[:pink]
      self.color_weighting_red    = color_weighting[:red]
      self.color_weighting_purple = color_weighting[:purple]
      self.color_weighting_gold   = color_weighting[:gold]
    end

    def consolidate_color_weighting
     self.color_weighting = Hash.new
     self.color_weighting[:black]  = color_weighting_black unless color_weighting_black.blank?
     self.color_weighting[:blue]   = color_weighting_blue unless color_weighting_blue.blank?
     self.color_weighting[:green]  = color_weighting_green unless color_weighting_green.blank?
     self.color_weighting[:pink]   = color_weighting_pink unless color_weighting_pink.blank?
     self.color_weighting[:red]    = color_weighting_red unless color_weighting_red.blank?
     self.color_weighting[:purple] = color_weighting_purple unless color_weighting_purple.blank?
     self.color_weighting[:gold]   = color_weighting_gold unless color_weighting_gold.blank?
    end
end

