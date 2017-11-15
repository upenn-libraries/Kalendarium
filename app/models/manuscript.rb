class Manuscript < ApplicationRecord
  has_many :calendar_pages, dependent: :destroy
  has_many :feasts
  # accepts_nested_attributes_for :calendar_pages # need these? #
  # accepts_nested_attributes_for :feasts         # # # # # # # #

  validates_presence_of :name
  serialize :columns
  serialize :color_weighting
  serialize :calendar_folios

  before_save :consolidate_columns
  before_save :consolidate_color_weighting
  before_save :combine_folio_information
  before_save :generate_calendar_folios

  after_find  :populate_columns
  after_find  :populate_color_weighting
  after_find  :split_folio_information

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

  attr_accessor :start_folio_number
  attr_accessor :start_folio_side
  attr_accessor :end_folio_number
  attr_accessor :end_folio_side


  NUMBERING_METHODS = %w(Foliated Paginated)

  LANGUAGES = %w(English French Italian Spanish German Latin Klingon)

  COLUMN_TYPES = ['Day', 'Golden Number', 'Dominical Letter', 'Roman Day', 'Text']

  COLORS = %w(Black Blue Green Pink Red Purple Gold)

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
    def consolidate_columns
      self.columns = []
      self.columns[0] = column1
      self.columns[1] = column2
      self.columns[2] = column3
      self.columns[3] = column4
      self.columns[4] = column5
    end

    def populate_columns
      self.column1 = columns[0]
      self.column2 = columns[1]
      self.column3 = columns[2]
      self.column4 = columns[3]
      self.column5 = columns[4]
    end

    def consolidate_color_weighting
     self.color_weighting = Hash.new
     self.color_weighting[:black]  = color_weighting_black  unless color_weighting_black.blank?
     self.color_weighting[:blue]   = color_weighting_blue   unless color_weighting_blue.blank?
     self.color_weighting[:green]  = color_weighting_green  unless color_weighting_green.blank?
     self.color_weighting[:pink]   = color_weighting_pink   unless color_weighting_pink.blank?
     self.color_weighting[:red]    = color_weighting_red    unless color_weighting_red.blank?
     self.color_weighting[:purple] = color_weighting_purple unless color_weighting_purple.blank?
     self.color_weighting[:gold]   = color_weighting_gold   unless color_weighting_gold.blank?
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

    def combine_folio_information
      self.start_folio = start_folio_number + start_folio_side
      self.end_folio   = end_folio_number + end_folio_side
    end

    def split_folio_information
      if %w(r v).include? start_folio[-1]
        self.start_folio_number = start_folio.chop
        self.start_folio_side   = start_folio[-1]
      else
        self.start_folio_number = start_folio
      end
      if %w(r v).include? end_folio[-1]
        self.end_folio_number = end_folio.chop
        self.end_folio_side   = end_folio[-1]
      else
        self.end_folio_number = end_folio
      end
    end

    def generate_calendar_folios
      self.calendar_folios =
      begin
     # if numbering_method == 'foliated'
        start_recto = start_folio_side == 'r'
        end_verso   =   end_folio_side == 'v'
        initials = start_recto ? [start_folio_number + 'r', start_folio_number + 'v'] : [start_folio_number + 'v']
        finals   = end_verso   ? [end_folio_number   + 'r', end_folio_number   + 'v'] : [end_folio_number   + 'r']
        intermediates = ((start_folio_number.to_i + 1)..(end_folio_number.to_i - 1)).to_a.map{ |n| ["#{n}r", "#{n}v"] }
        (initials + intermediates + finals).flatten
     # else
     #   (start_f.to_i..end_folio.to_i).to_a.map{ |n| n.to_s }
       end
    end
end

