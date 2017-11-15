class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  serialize :saint_attributes

  ############
  before_save :consolidate_saint_attributes
  after_find  :populate_saint_attributes

  attr_accessor :st_attr_abb
  attr_accessor :st_attr_aep
  attr_accessor :st_attr_card
  attr_accessor :st_attr_cf
  attr_accessor :st_attr_diac
  attr_accessor :st_attr_ep
  attr_accessor :st_attr_erem
  attr_accessor :st_attr_m
  attr_accessor :st_attr_mon
  attr_accessor :st_attr_pb
  attr_accessor :st_attr_pp
  attr_accessor :st_attr_protom
  attr_accessor :st_attr_s
  attr_accessor :st_attr_v
  attr_accessor :st_attr_vid
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

  SAINT_ATTRIBUTES = %w(
    abb.
    aep.
    card.
    cf.
    diac.
    ep.
    erem.
    m.
    mon.
    pb.
    pp.
    protom.
    s.
    v.
    vid.
  )

  def to_s
    s = "Feast of St. #{saint_name}: "
    s << "(btw he's a cardinal)" if st_attr_card == '1'

    return s if transcription.blank?

    limit = 40
    elip = transcription.to_s.length > limit ? '...' : ''
    s << "\"#{transcription[0...limit]}#{elip}\""
  end

  private
    def populate_saint_attributes
      self.st_attr_abb    = '1' if saint_attributes[:st_attr_abb] == '1'
      self.st_attr_aep    = '1' if saint_attributes[:st_attr_aep] == '1'
      self.st_attr_card   = '1' if saint_attributes[:st_attr_card] == '1'
      self.st_attr_cf     = '1' if saint_attributes[:st_attr_cf] == '1'
      self.st_attr_diac   = '1' if saint_attributes[:st_attr_diac] == '1'
      self.st_attr_ep     = '1' if saint_attributes[:st_attr_ep] == '1'
      self.st_attr_erem   = '1' if saint_attributes[:st_attr_erem] == '1'
      self.st_attr_m      = '1' if saint_attributes[:st_attr_m] == '1'
      self.st_attr_mon    = '1' if saint_attributes[:st_attr_mon] == '1'
      self.st_attr_pb     = '1' if saint_attributes[:st_attr_pb] == '1'
      self.st_attr_pp     = '1' if saint_attributes[:st_attr_pp] == '1'
      self.st_attr_protom = '1' if saint_attributes[:st_attr_protom] == '1'
      self.st_attr_s      = '1' if saint_attributes[:st_attr_s] == '1'
      self.st_attr_v      = '1' if saint_attributes[:st_attr_v] == '1'
      self.st_attr_vid    = '1' if saint_attributes[:st_attr_vid] == '1'
    end

    def consolidate_saint_attributes
      self.saint_attributes = {}
      self.saint_attributes[:st_attr_abb]    = '1' if st_attr_abb == '1'
      self.saint_attributes[:st_attr_aep]    = '1' if st_attr_aep == '1'
      self.saint_attributes[:st_attr_card]   = '1' if st_attr_card == '1'
      self.saint_attributes[:st_attr_cf]     = '1' if st_attr_cf == '1'
      self.saint_attributes[:st_attr_diac]   = '1' if st_attr_diac == '1'
      self.saint_attributes[:st_attr_ep]     = '1' if st_attr_ep == '1'
      self.saint_attributes[:st_attr_erem]   = '1' if st_attr_erem == '1'
      self.saint_attributes[:st_attr_m]      = '1' if st_attr_m == '1'
      self.saint_attributes[:st_attr_mon]    = '1' if st_attr_mon == '1'
      self.saint_attributes[:st_attr_pb]     = '1' if st_attr_pb == '1'
      self.saint_attributes[:st_attr_pp]     = '1' if st_attr_pp == '1'
      self.saint_attributes[:st_attr_protom] = '1' if st_attr_protom == '1'
      self.saint_attributes[:st_attr_s]      = '1' if st_attr_s == '1'
      self.saint_attributes[:st_attr_v]      = '1' if st_attr_v == '1'
      self.saint_attributes[:st_attr_vid]    = '1' if st_attr_vid == '1'
    end
end















class Feast < ApplicationRecord
  DATE_TABLE = {
    [ 1,  1] => {ordinal:   1, golden_number: 'iii'},
    [ 1,  2] => {ordinal:   2, golden_number: nil},
    [ 1,  3] => {ordinal:   3, golden_number: 'xi'},
    [ 1,  4] => {ordinal:   4, golden_number: nil},
    [ 1,  5] => {ordinal:   5, golden_number: 'xix'},
    [ 1,  6] => {ordinal:   6, golden_number: 'viii'},
    [ 1,  7] => {ordinal:   7, golden_number: nil},
    [ 1,  8] => {ordinal:   8, golden_number: 'xvi'},
    [ 1,  9] => {ordinal:   9, golden_number: 'v'},
    [ 1, 10] => {ordinal:  10, golden_number: nil},
    [ 1, 11] => {ordinal:  11, golden_number: 'xiii'},
    [ 1, 12] => {ordinal:  12, golden_number: 'ii'},
    [ 1, 13] => {ordinal:  13, golden_number: nil},
    [ 1, 14] => {ordinal:  14, golden_number: 'x'},
    [ 1, 15] => {ordinal:  15, golden_number: nil},
    [ 1, 16] => {ordinal:  16, golden_number: 'xviii'},
    [ 1, 17] => {ordinal:  17, golden_number: 'vii'},
    [ 1, 18] => {ordinal:  18, golden_number: nil},
    [ 1, 19] => {ordinal:  19, golden_number: 'xv'},
    [ 1, 20] => {ordinal:  20, golden_number: 'iiii'},
    [ 1, 21] => {ordinal:  21, golden_number: nil},
    [ 1, 22] => {ordinal:  22, golden_number: 'xii'},
    [ 1, 23] => {ordinal:  23, golden_number: 'i'},
    [ 1, 24] => {ordinal:  24, golden_number: nil},
    [ 1, 25] => {ordinal:  25, golden_number: 'ix'},
    [ 1, 26] => {ordinal:  26, golden_number: nil},
    [ 1, 27] => {ordinal:  27, golden_number: 'xvii'},
    [ 1, 28] => {ordinal:  28, golden_number: 'vi'},
    [ 1, 29] => {ordinal:  29, golden_number: nil},
    [ 1, 30] => {ordinal:  30, golden_number: 'xiiii'},
    [ 1, 31] => {ordinal:  31, golden_number: 'iii'},
    [ 2,  1] => {ordinal:  32, golden_number: nil},
    [ 2,  2] => {ordinal:  33, golden_number: 'xi'},
    [ 2,  3] => {ordinal:  34, golden_number: 'xix'},
    [ 2,  4] => {ordinal:  35, golden_number: 'viii'},
    [ 2,  5] => {ordinal:  36, golden_number: nil},
    [ 2,  6] => {ordinal:  37, golden_number: 'xvi'},
    [ 2,  7] => {ordinal:  38, golden_number: 'v'},
    [ 2,  8] => {ordinal:  39, golden_number: nil},
    [ 2,  9] => {ordinal:  40, golden_number: 'xiii'},
    [ 2, 10] => {ordinal:  41, golden_number: 'ii'},
    [ 2, 11] => {ordinal:  42, golden_number: nil},
    [ 2, 12] => {ordinal:  43, golden_number: 'x'},
    [ 2, 13] => {ordinal:  44, golden_number: nil},
    [ 2, 14] => {ordinal:  45, golden_number: 'xviii'},
    [ 2, 15] => {ordinal:  46, golden_number: 'vii'},
    [ 2, 16] => {ordinal:  47, golden_number: nil},
    [ 2, 17] => {ordinal:  48, golden_number: 'xv'},
    [ 2, 18] => {ordinal:  49, golden_number: 'iiii'},
    [ 2, 19] => {ordinal:  50, golden_number: nil},
    [ 2, 20] => {ordinal:  51, golden_number: 'xii'},
    [ 2, 21] => {ordinal:  52, golden_number: 'i'},
    [ 2, 22] => {ordinal:  53, golden_number: nil},
    [ 2, 23] => {ordinal:  54, golden_number: 'ix'},
    [ 2, 24] => {ordinal:  55, golden_number: nil},
    [ 2, 25] => {ordinal:  56, golden_number: 'xvii'},
    [ 2, 26] => {ordinal:  57, golden_number: 'vi'},
    [ 2, 27] => {ordinal:  58, golden_number: nil},
    [ 2, 28] => {ordinal:  59, golden_number: 'xiiii'},
    [ 3,  1] => {ordinal:  60, golden_number: 'iii'},
    [ 3,  2] => {ordinal:  61, golden_number: nil},
    [ 3,  3] => {ordinal:  62, golden_number: 'xi'},
    [ 3,  4] => {ordinal:  63, golden_number: nil},
    [ 3,  5] => {ordinal:  64, golden_number: 'xix'},
    [ 3,  6] => {ordinal:  65, golden_number: 'viii'},
    [ 3,  7] => {ordinal:  66, golden_number: nil},
    [ 3,  8] => {ordinal:  67, golden_number: 'xvi'},
    [ 3,  9] => {ordinal:  68, golden_number: 'v'},
    [ 3, 10] => {ordinal:  69, golden_number: nil},
    [ 3, 11] => {ordinal:  70, golden_number: 'xiii'},
    [ 3, 12] => {ordinal:  71, golden_number: 'ii'},
    [ 3, 13] => {ordinal:  72, golden_number: nil},
    [ 3, 14] => {ordinal:  73, golden_number: 'x'},
    [ 3, 15] => {ordinal:  74, golden_number: nil},
    [ 3, 16] => {ordinal:  75, golden_number: 'xviii'},
    [ 3, 17] => {ordinal:  76, golden_number: 'vii'},
    [ 3, 18] => {ordinal:  77, golden_number: nil},
    [ 3, 19] => {ordinal:  78, golden_number: 'xv'},
    [ 3, 20] => {ordinal:  79, golden_number: 'iiii'},
    [ 3, 21] => {ordinal:  80, golden_number: nil},
    [ 3, 22] => {ordinal:  81, golden_number: 'xii'},
    [ 3, 23] => {ordinal:  82, golden_number: 'i'},
    [ 3, 24] => {ordinal:  83, golden_number: nil},
    [ 3, 25] => {ordinal:  84, golden_number: 'ix'},
    [ 3, 26] => {ordinal:  85, golden_number: nil},
    [ 3, 27] => {ordinal:  86, golden_number: 'xvii'},
    [ 3, 28] => {ordinal:  87, golden_number: 'vi'},
    [ 3, 29] => {ordinal:  88, golden_number: nil},
    [ 3, 30] => {ordinal:  89, golden_number: 'xiiii'},
    [ 3, 31] => {ordinal:  90, golden_number: 'iii'},
    [ 4,  1] => {ordinal:  91, golden_number: nil},
    [ 4,  2] => {ordinal:  92, golden_number: 'xi'},
    [ 4,  3] => {ordinal:  93, golden_number: nil},
    [ 4,  4] => {ordinal:  94, golden_number: 'xix'},
    [ 4,  5] => {ordinal:  95, golden_number: 'viii'},
    [ 4,  6] => {ordinal:  96, golden_number: 'xvi'},
    [ 4,  7] => {ordinal:  97, golden_number: 'v'},
    [ 4,  8] => {ordinal:  98, golden_number: nil},
    [ 4,  9] => {ordinal:  99, golden_number: 'xiii'},
    [ 4, 10] => {ordinal: 100, golden_number: 'ii'},
    [ 4, 11] => {ordinal: 101, golden_number: nil},
    [ 4, 12] => {ordinal: 102, golden_number: 'x'},
    [ 4, 13] => {ordinal: 103, golden_number: nil},
    [ 4, 14] => {ordinal: 104, golden_number: 'xviii'},
    [ 4, 15] => {ordinal: 105, golden_number: 'vii'},
    [ 4, 16] => {ordinal: 106, golden_number: 'vii'},
    [ 4, 17] => {ordinal: 107, golden_number: 'xv'},
    [ 4, 18] => {ordinal: 108, golden_number: 'iiii'},
    [ 4, 19] => {ordinal: 109, golden_number: nil},
    [ 4, 20] => {ordinal: 110, golden_number: 'xii'},
    [ 4, 21] => {ordinal: 111, golden_number: 'i'},
    [ 4, 22] => {ordinal: 112, golden_number: nil},
    [ 4, 23] => {ordinal: 113, golden_number: 'ix'},
    [ 4, 24] => {ordinal: 114, golden_number: nil},
    [ 4, 25] => {ordinal: 115, golden_number: 'xvii'},
    [ 4, 26] => {ordinal: 116, golden_number: 'vi'},
    [ 4, 27] => {ordinal: 117, golden_number: nil},
    [ 4, 28] => {ordinal: 118, golden_number: 'xiiii'},
    [ 4, 29] => {ordinal: 119, golden_number: 'iii'},
    [ 4, 30] => {ordinal: 120, golden_number: nil},
    [ 5,  1] => {ordinal: 121, golden_number: 'xi'},
    [ 5,  2] => {ordinal: 122, golden_number: nil},
    [ 5,  3] => {ordinal: 123, golden_number: 'xix'},
    [ 5,  4] => {ordinal: 124, golden_number: 'viii'},
    [ 5,  5] => {ordinal: 125, golden_number: nil},
    [ 5,  6] => {ordinal: 126, golden_number: 'xvi'},
    [ 5,  7] => {ordinal: 127, golden_number: 'v'},
    [ 5,  8] => {ordinal: 128, golden_number: nil},
    [ 5,  9] => {ordinal: 129, golden_number: 'xiii'},
    [ 5, 10] => {ordinal: 130, golden_number: 'ii'},
    [ 5, 11] => {ordinal: 131, golden_number: nil},
    [ 5, 12] => {ordinal: 132, golden_number: 'x'},
    [ 5, 13] => {ordinal: 133, golden_number: nil},
    [ 5, 14] => {ordinal: 134, golden_number: 'xviii'},
    [ 5, 15] => {ordinal: 135, golden_number: 'vii'},
    [ 5, 16] => {ordinal: 136, golden_number: nil},
    [ 5, 17] => {ordinal: 137, golden_number: 'xv'},
    [ 5, 18] => {ordinal: 138, golden_number: 'iiii'},
    [ 5, 19] => {ordinal: 139, golden_number: nil},
    [ 5, 20] => {ordinal: 140, golden_number: 'xii'},
    [ 5, 21] => {ordinal: 141, golden_number: 'i'},
    [ 5, 22] => {ordinal: 142, golden_number: nil},
    [ 5, 23] => {ordinal: 143, golden_number: 'ix'},
    [ 5, 24] => {ordinal: 144, golden_number: nil},
    [ 5, 25] => {ordinal: 145, golden_number: 'xvii'},
    [ 5, 26] => {ordinal: 146, golden_number: 'vi'},
    [ 5, 27] => {ordinal: 147, golden_number: nil},
    [ 5, 28] => {ordinal: 148, golden_number: 'xiiii'},
    [ 5, 29] => {ordinal: 149, golden_number: 'iii'},
    [ 5, 30] => {ordinal: 150, golden_number: nil},
    [ 5, 31] => {ordinal: 151, golden_number: 'xi'},
    [ 6,  1] => {ordinal: 152, golden_number: nil},
    [ 6,  2] => {ordinal: 153, golden_number: 'xix'},
    [ 6,  3] => {ordinal: 154, golden_number: 'viii'},
    [ 6,  4] => {ordinal: 155, golden_number: 'xvi'},
    [ 6,  5] => {ordinal: 156, golden_number: 'v'},
    [ 6,  6] => {ordinal: 157, golden_number: nil},
    [ 6,  7] => {ordinal: 158, golden_number: 'xiii'},
    [ 6,  8] => {ordinal: 159, golden_number: 'ii'},
    [ 6,  9] => {ordinal: 160, golden_number: nil},
    [ 6, 10] => {ordinal: 161, golden_number: 'x'},
    [ 6, 11] => {ordinal: 162, golden_number: nil},
    [ 6, 12] => {ordinal: 163, golden_number: 'xviii'},
    [ 6, 13] => {ordinal: 164, golden_number: 'vii'},
    [ 6, 14] => {ordinal: 165, golden_number: nil},
    [ 6, 15] => {ordinal: 166, golden_number: 'xv'},
    [ 6, 16] => {ordinal: 167, golden_number: 'iiii'},
    [ 6, 17] => {ordinal: 168, golden_number: nil},
    [ 6, 18] => {ordinal: 169, golden_number: 'xii'},
    [ 6, 19] => {ordinal: 170, golden_number: 'i'},
    [ 6, 20] => {ordinal: 171, golden_number: nil},
    [ 6, 21] => {ordinal: 172, golden_number: 'ix'},
    [ 6, 22] => {ordinal: 173, golden_number: nil},
    [ 6, 23] => {ordinal: 174, golden_number: 'xvii'},
    [ 6, 24] => {ordinal: 175, golden_number: 'vi'},
    [ 6, 25] => {ordinal: 176, golden_number: nil},
    [ 6, 26] => {ordinal: 177, golden_number: 'xiiii'},
    [ 6, 27] => {ordinal: 178, golden_number: 'iii'},
    [ 6, 28] => {ordinal: 179, golden_number: nil},
    [ 6, 29] => {ordinal: 180, golden_number: 'xi'},
    [ 6, 30] => {ordinal: 181, golden_number: nil},
    [ 7,  1] => {ordinal: 182, golden_number: 'xix'},
    [ 7,  2] => {ordinal: 183, golden_number: 'viii'},
    [ 7,  3] => {ordinal: 184, golden_number: nil},
    [ 7,  4] => {ordinal: 185, golden_number: 'xvi'},
    [ 7,  5] => {ordinal: 186, golden_number: 'v'},
    [ 7,  6] => {ordinal: 187, golden_number: nil},
    [ 7,  7] => {ordinal: 188, golden_number: 'xiii'},
    [ 7,  8] => {ordinal: 189, golden_number: 'ii'},
    [ 7,  9] => {ordinal: 190, golden_number: nil},
    [ 7, 10] => {ordinal: 191, golden_number: 'x'},
    [ 7, 11] => {ordinal: 192, golden_number: nil},
    [ 7, 12] => {ordinal: 193, golden_number: 'xviii'},
    [ 7, 13] => {ordinal: 194, golden_number: 'vii'},
    [ 7, 14] => {ordinal: 195, golden_number: nil},
    [ 7, 15] => {ordinal: 196, golden_number: 'xv'},
    [ 7, 16] => {ordinal: 197, golden_number: 'iiii'},
    [ 7, 17] => {ordinal: 198, golden_number: nil},
    [ 7, 18] => {ordinal: 199, golden_number: 'xii'},
    [ 7, 19] => {ordinal: 200, golden_number: 'i'},
    [ 7, 20] => {ordinal: 201, golden_number: nil},
    [ 7, 21] => {ordinal: 202, golden_number: 'ix'},
    [ 7, 22] => {ordinal: 203, golden_number: nil},
    [ 7, 23] => {ordinal: 204, golden_number: 'xvii'},
    [ 7, 24] => {ordinal: 205, golden_number: 'vi'},
    [ 7, 25] => {ordinal: 206, golden_number: nil},
    [ 7, 26] => {ordinal: 207, golden_number: 'xiiii'},
    [ 7, 27] => {ordinal: 208, golden_number: 'iii'},
    [ 7, 28] => {ordinal: 209, golden_number: nil},
    [ 7, 29] => {ordinal: 210, golden_number: 'xi'},
    [ 7, 30] => {ordinal: 211, golden_number: 'xix'},
    [ 7, 31] => {ordinal: 212, golden_number: nil},
    [ 8,  1] => {ordinal: 213, golden_number: 'viii'},
    [ 8,  2] => {ordinal: 214, golden_number: 'xvi'},
    [ 8,  3] => {ordinal: 215, golden_number: 'v'},
    [ 8,  4] => {ordinal: 216, golden_number: nil},
    [ 8,  5] => {ordinal: 217, golden_number: 'xiii'},
    [ 8,  6] => {ordinal: 218, golden_number: 'ii'},
    [ 8,  7] => {ordinal: 219, golden_number: nil},
    [ 8,  8] => {ordinal: 220, golden_number: 'x'},
    [ 8,  9] => {ordinal: 221, golden_number: nil},
    [ 8, 10] => {ordinal: 222, golden_number: 'xviii'},
    [ 8, 11] => {ordinal: 223, golden_number: 'vii'},
    [ 8, 12] => {ordinal: 224, golden_number: nil},
    [ 8, 13] => {ordinal: 225, golden_number: 'xv'},
    [ 8, 14] => {ordinal: 226, golden_number: 'iiii'},
    [ 8, 15] => {ordinal: 227, golden_number: nil},
    [ 8, 16] => {ordinal: 228, golden_number: 'xii'},
    [ 8, 17] => {ordinal: 229, golden_number: 'i'},
    [ 8, 18] => {ordinal: 230, golden_number: nil},
    [ 8, 19] => {ordinal: 231, golden_number: 'ix'},
    [ 8, 20] => {ordinal: 232, golden_number: nil},
    [ 8, 21] => {ordinal: 233, golden_number: 'xvii'},
    [ 8, 22] => {ordinal: 234, golden_number: 'vi'},
    [ 8, 23] => {ordinal: 235, golden_number: nil},
    [ 8, 24] => {ordinal: 236, golden_number: 'xiiii'},
    [ 8, 25] => {ordinal: 237, golden_number: 'iii'},
    [ 8, 26] => {ordinal: 238, golden_number: nil},
    [ 8, 27] => {ordinal: 239, golden_number: 'xi'},
    [ 8, 28] => {ordinal: 240, golden_number: 'xix'},
    [ 8, 29] => {ordinal: 241, golden_number: nil},
    [ 8, 30] => {ordinal: 242, golden_number: 'viii'},
    [ 8, 31] => {ordinal: 243, golden_number: nil},
    [ 9,  1] => {ordinal: 244, golden_number: 'xvi'},
    [ 9,  2] => {ordinal: 245, golden_number: 'v'},
    [ 9,  3] => {ordinal: 246, golden_number: nil},
    [ 9,  4] => {ordinal: 247, golden_number: 'xiii'},
    [ 9,  5] => {ordinal: 248, golden_number: 'ii'},
    [ 9,  6] => {ordinal: 249, golden_number: nil},
    [ 9,  7] => {ordinal: 250, golden_number: 'x'},
    [ 9,  8] => {ordinal: 251, golden_number: nil},
    [ 9,  9] => {ordinal: 252, golden_number: 'xviii'},
    [ 9, 10] => {ordinal: 253, golden_number: 'vii'},
    [ 9, 11] => {ordinal: 254, golden_number: nil},
    [ 9, 12] => {ordinal: 255, golden_number: 'xv'},
    [ 9, 13] => {ordinal: 256, golden_number: 'iiii'},
    [ 9, 14] => {ordinal: 257, golden_number: nil},
    [ 9, 15] => {ordinal: 258, golden_number: 'xii'},
    [ 9, 16] => {ordinal: 259, golden_number: 'i'},
    [ 9, 17] => {ordinal: 260, golden_number: nil},
    [ 9, 18] => {ordinal: 261, golden_number: 'ix'},
    [ 9, 19] => {ordinal: 262, golden_number: nil},
    [ 9, 20] => {ordinal: 263, golden_number: 'xvii'},
    [ 9, 21] => {ordinal: 264, golden_number: 'vi'},
    [ 9, 22] => {ordinal: 265, golden_number: nil},
    [ 9, 23] => {ordinal: 266, golden_number: 'xiiii'},
    [ 9, 24] => {ordinal: 267, golden_number: 'iii'},
    [ 9, 25] => {ordinal: 268, golden_number: nil},
    [ 9, 26] => {ordinal: 269, golden_number: 'xi'},
    [ 9, 27] => {ordinal: 270, golden_number: 'xix'},
    [ 9, 28] => {ordinal: 271, golden_number: nil},
    [ 9, 29] => {ordinal: 272, golden_number: 'viii'},
    [ 9, 30] => {ordinal: 273, golden_number: nil},
    [10,  1] => {ordinal: 274, golden_number: 'xvi'},
    [10,  2] => {ordinal: 275, golden_number: 'v'},
    [10,  3] => {ordinal: 276, golden_number: 'xiii'},
    [10,  4] => {ordinal: 277, golden_number: 'ii'},
    [10,  5] => {ordinal: 278, golden_number: nil},
    [10,  6] => {ordinal: 279, golden_number: 'x'},
    [10,  7] => {ordinal: 280, golden_number: nil},
    [10,  8] => {ordinal: 281, golden_number: 'xviii'},
    [10,  9] => {ordinal: 282, golden_number: 'vii'},
    [10, 10] => {ordinal: 283, golden_number: nil},
    [10, 11] => {ordinal: 284, golden_number: 'xv'},
    [10, 12] => {ordinal: 285, golden_number: 'iiii'},
    [10, 13] => {ordinal: 286, golden_number: nil},
    [10, 14] => {ordinal: 287, golden_number: 'xii'},
    [10, 15] => {ordinal: 288, golden_number: 'i'},
    [10, 16] => {ordinal: 289, golden_number: nil},
    [10, 17] => {ordinal: 290, golden_number: 'ix'},
    [10, 18] => {ordinal: 291, golden_number: nil},
    [10, 19] => {ordinal: 292, golden_number: 'xvii'},
    [10, 20] => {ordinal: 293, golden_number: 'vi'},
    [10, 21] => {ordinal: 294, golden_number: nil},
    [10, 22] => {ordinal: 295, golden_number: 'xiiii'},
    [10, 23] => {ordinal: 296, golden_number: 'iii'},
    [10, 24] => {ordinal: 297, golden_number: nil},
    [10, 25] => {ordinal: 298, golden_number: 'xi'},
    [10, 26] => {ordinal: 299, golden_number: 'xix'},
    [10, 27] => {ordinal: 300, golden_number: nil},
    [10, 28] => {ordinal: 301, golden_number: 'viii'},
    [10, 29] => {ordinal: 302, golden_number: nil},
    [10, 30] => {ordinal: 303, golden_number: 'xvi'},
    [10, 31] => {ordinal: 304, golden_number: 'v'},
    [11,  1] => {ordinal: 305, golden_number: nil},
    [11,  2] => {ordinal: 306, golden_number: 'xiii'},
    [11,  3] => {ordinal: 307, golden_number: 'ii'},
    [11,  4] => {ordinal: 308, golden_number: nil},
    [11,  5] => {ordinal: 309, golden_number: 'x'},
    [11,  6] => {ordinal: 310, golden_number: nil},
    [11,  7] => {ordinal: 311, golden_number: 'xviii'},
    [11,  8] => {ordinal: 312, golden_number: 'vii'},
    [11,  9] => {ordinal: 313, golden_number: nil},
    [11, 10] => {ordinal: 314, golden_number: 'xv'},
    [11, 11] => {ordinal: 315, golden_number: 'iiii'},
    [11, 12] => {ordinal: 316, golden_number: nil},
    [11, 13] => {ordinal: 317, golden_number: 'xii'},
    [11, 14] => {ordinal: 318, golden_number: 'i'},
    [11, 15] => {ordinal: 319, golden_number: nil},
    [11, 16] => {ordinal: 320, golden_number: 'ix'},
    [11, 17] => {ordinal: 321, golden_number: nil},
    [11, 18] => {ordinal: 322, golden_number: 'xvii'},
    [11, 19] => {ordinal: 323, golden_number: 'vi'},
    [11, 20] => {ordinal: 324, golden_number: nil},
    [11, 21] => {ordinal: 325, golden_number: 'xiiii'},
    [11, 22] => {ordinal: 326, golden_number: 'iii'},
    [11, 23] => {ordinal: 327, golden_number: nil},
    [11, 24] => {ordinal: 328, golden_number: 'xi'},
    [11, 25] => {ordinal: 329, golden_number: 'xix'},
    [11, 26] => {ordinal: 330, golden_number: nil},
    [11, 27] => {ordinal: 331, golden_number: 'viii'},
    [11, 28] => {ordinal: 332, golden_number: nil},
    [11, 29] => {ordinal: 333, golden_number: 'xvi'},
    [11, 30] => {ordinal: 334, golden_number: 'v'},
    [12,  1] => {ordinal: 335, golden_number: 'xiii'},
    [12,  2] => {ordinal: 336, golden_number: 'ii'},
    [12,  3] => {ordinal: 337, golden_number: nil},
    [12,  4] => {ordinal: 338, golden_number: 'x'},
    [12,  5] => {ordinal: 339, golden_number: nil},
    [12,  6] => {ordinal: 340, golden_number: 'xviii'},
    [12,  7] => {ordinal: 341, golden_number: 'vii'},
    [12,  8] => {ordinal: 342, golden_number: nil},
    [12,  9] => {ordinal: 343, golden_number: 'xv'},
    [12, 10] => {ordinal: 344, golden_number: 'iiii'},
    [12, 11] => {ordinal: 345, golden_number: nil},
    [12, 12] => {ordinal: 346, golden_number: 'xii'},
    [12, 13] => {ordinal: 347, golden_number: 'i'},
    [12, 14] => {ordinal: 348, golden_number: nil},
    [12, 15] => {ordinal: 349, golden_number: 'ix'},
    [12, 16] => {ordinal: 350, golden_number: nil},
    [12, 17] => {ordinal: 351, golden_number: 'xvii'},
    [12, 18] => {ordinal: 352, golden_number: 'vi'},
    [12, 19] => {ordinal: 353, golden_number: nil},
    [12, 20] => {ordinal: 354, golden_number: 'xiiii'},
    [12, 21] => {ordinal: 355, golden_number: 'iii'},
    [12, 22] => {ordinal: 356, golden_number: nil},
    [12, 23] => {ordinal: 357, golden_number: 'xi'},
    [12, 24] => {ordinal: 358, golden_number: 'xix'},
    [12, 25] => {ordinal: 359, golden_number: nil},
    [12, 26] => {ordinal: 360, golden_number: 'viii'},
    [12, 27] => {ordinal: 361, golden_number: nil},
    [12, 28] => {ordinal: 362, golden_number: 'xvi'},
    [12, 29] => {ordinal: 363, golden_number: 'v'},
    [12, 30] => {ordinal: 364, golden_number: nil},
    [12, 31] => {ordinal: 365, golden_number: 'xiii'},
  }

  # # #
  DATE_TABLE.default = {ordinal: 0, golden_number: 'ERROR'}
  # # #
end

