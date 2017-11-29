module Kal
  module Days
    Day = Struct.new(:month_number, :day_number, :ordinal, :golden_number)

    DAY_TABLE = [
      Day.new( 1,  1,   1, 'iii'),
      Day.new( 1,  2,   2, nil),
      Day.new( 1,  3,   3, 'xi'),
      Day.new( 1,  4,   4, nil),
      Day.new( 1,  5,   5, 'xix'),
      Day.new( 1,  6,   6, 'viii'),
      Day.new( 1,  7,   7, nil),
      Day.new( 1,  8,   8, 'xvi'),
      Day.new( 1,  9,   9, 'v'),
      Day.new( 1, 10,  10, nil),
      Day.new( 1, 11,  11, 'xiii'),
      Day.new( 1, 12,  12, 'ii'),
      Day.new( 1, 13,  13, nil),
      Day.new( 1, 14,  14, 'x'),
      Day.new( 1, 15,  15, nil),
      Day.new( 1, 16,  16, 'xviii'),
      Day.new( 1, 17,  17, 'vii'),
      Day.new( 1, 18,  18, nil),
      Day.new( 1, 19,  19, 'xv'),
      Day.new( 1, 20,  20, 'iiii'),
      Day.new( 1, 21,  21, nil),
      Day.new( 1, 22,  22, 'xii'),
      Day.new( 1, 23,  23, 'i'),
      Day.new( 1, 24,  24, nil),
      Day.new( 1, 25,  25, 'ix'),
      Day.new( 1, 26,  26, nil),
      Day.new( 1, 27,  27, 'xvii'),
      Day.new( 1, 28,  28, 'vi'),
      Day.new( 1, 29,  29, nil),
      Day.new( 1, 30,  30, 'xiiii'),
      Day.new( 1, 31,  31, 'iii'),
      Day.new( 2,  1,  32, nil),
      Day.new( 2,  2,  33, 'xi'),
      Day.new( 2,  3,  34, 'xix'),
      Day.new( 2,  4,  35, 'viii'),
      Day.new( 2,  5,  36, nil),
      Day.new( 2,  6,  37, 'xvi'),
      Day.new( 2,  7,  38, 'v'),
      Day.new( 2,  8,  39, nil),
      Day.new( 2,  9,  40, 'xiii'),
      Day.new( 2, 10,  41, 'ii'),
      Day.new( 2, 11,  42, nil),
      Day.new( 2, 12,  43, 'x'),
      Day.new( 2, 13,  44, nil),
      Day.new( 2, 14,  45, 'xviii'),
      Day.new( 2, 15,  46, 'vii'),
      Day.new( 2, 16,  47, nil),
      Day.new( 2, 17,  48, 'xv'),
      Day.new( 2, 18,  49, 'iiii'),
      Day.new( 2, 19,  50, nil),
      Day.new( 2, 20,  51, 'xii'),
      Day.new( 2, 21,  52, 'i'),
      Day.new( 2, 22,  53, nil),
      Day.new( 2, 23,  54, 'ix'),
      Day.new( 2, 24,  55, nil),
      Day.new( 2, 25,  56, 'xvii'),
      Day.new( 2, 26,  57, 'vi'),
      Day.new( 2, 27,  58, nil),
      Day.new( 2, 28,  59, 'xiiii'),
      Day.new( 3,  1,  60, 'iii'),
      Day.new( 3,  2,  61, nil),
      Day.new( 3,  3,  62, 'xi'),
      Day.new( 3,  4,  63, nil),
      Day.new( 3,  5,  64, 'xix'),
      Day.new( 3,  6,  65, 'viii'),
      Day.new( 3,  7,  66, nil),
      Day.new( 3,  8,  67, 'xvi'),
      Day.new( 3,  9,  68, 'v'),
      Day.new( 3, 10,  69, nil),
      Day.new( 3, 11,  70, 'xiii'),
      Day.new( 3, 12,  71, 'ii'),
      Day.new( 3, 13,  72, nil),
      Day.new( 3, 14,  73, 'x'),
      Day.new( 3, 15,  74, nil),
      Day.new( 3, 16,  75, 'xviii'),
      Day.new( 3, 17,  76, 'vii'),
      Day.new( 3, 18,  77, nil),
      Day.new( 3, 19,  78, 'xv'),
      Day.new( 3, 20,  79, 'iiii'),
      Day.new( 3, 21,  80, nil),
      Day.new( 3, 22,  81, 'xii'),
      Day.new( 3, 23,  82, 'i'),
      Day.new( 3, 24,  83, nil),
      Day.new( 3, 25,  84, 'ix'),
      Day.new( 3, 26,  85, nil),
      Day.new( 3, 27,  86, 'xvii'),
      Day.new( 3, 28,  87, 'vi'),
      Day.new( 3, 29,  88, nil),
      Day.new( 3, 30,  89, 'xiiii'),
      Day.new( 3, 31,  90, 'iii'),
      Day.new( 4,  1,  91, nil),
      Day.new( 4,  2,  92, 'xi'),
      Day.new( 4,  3,  93, nil),
      Day.new( 4,  4,  94, 'xix'),
      Day.new( 4,  5,  95, 'viii'),
      Day.new( 4,  6,  96, 'xvi'),
      Day.new( 4,  7,  97, 'v'),
      Day.new( 4,  8,  98, nil),
      Day.new( 4,  9,  99, 'xiii'),
      Day.new( 4, 10, 100, 'ii'),
      Day.new( 4, 11, 101, nil),
      Day.new( 4, 12, 102, 'x'),
      Day.new( 4, 13, 103, nil),
      Day.new( 4, 14, 104, 'xviii'),
      Day.new( 4, 15, 105, 'vii'),
      Day.new( 4, 16, 106, 'vii'),
      Day.new( 4, 17, 107, 'xv'),
      Day.new( 4, 18, 108, 'iiii'),
      Day.new( 4, 19, 109, nil),
      Day.new( 4, 20, 110, 'xii'),
      Day.new( 4, 21, 111, 'i'),
      Day.new( 4, 22, 112, nil),
      Day.new( 4, 23, 113, 'ix'),
      Day.new( 4, 24, 114, nil),
      Day.new( 4, 25, 115, 'xvii'),
      Day.new( 4, 26, 116, 'vi'),
      Day.new( 4, 27, 117, nil),
      Day.new( 4, 28, 118, 'xiiii'),
      Day.new( 4, 29, 119, 'iii'),
      Day.new( 4, 30, 120, nil),
      Day.new( 5,  1, 121, 'xi'),
      Day.new( 5,  2, 122, nil),
      Day.new( 5,  3, 123, 'xix'),
      Day.new( 5,  4, 124, 'viii'),
      Day.new( 5,  5, 125, nil),
      Day.new( 5,  6, 126, 'xvi'),
      Day.new( 5,  7, 127, 'v'),
      Day.new( 5,  8, 128, nil),
      Day.new( 5,  9, 129, 'xiii'),
      Day.new( 5, 10, 130, 'ii'),
      Day.new( 5, 11, 131, nil),
      Day.new( 5, 12, 132, 'x'),
      Day.new( 5, 13, 133, nil),
      Day.new( 5, 14, 134, 'xviii'),
      Day.new( 5, 15, 135, 'vii'),
      Day.new( 5, 16, 136, nil),
      Day.new( 5, 17, 137, 'xv'),
      Day.new( 5, 18, 138, 'iiii'),
      Day.new( 5, 19, 139, nil),
      Day.new( 5, 20, 140, 'xii'),
      Day.new( 5, 21, 141, 'i'),
      Day.new( 5, 22, 142, nil),
      Day.new( 5, 23, 143, 'ix'),
      Day.new( 5, 24, 144, nil),
      Day.new( 5, 25, 145, 'xvii'),
      Day.new( 5, 26, 146, 'vi'),
      Day.new( 5, 27, 147, nil),
      Day.new( 5, 28, 148, 'xiiii'),
      Day.new( 5, 29, 149, 'iii'),
      Day.new( 5, 30, 150, nil),
      Day.new( 5, 31, 151, 'xi'),
      Day.new( 6,  1, 152, nil),
      Day.new( 6,  2, 153, 'xix'),
      Day.new( 6,  3, 154, 'viii'),
      Day.new( 6,  4, 155, 'xvi'),
      Day.new( 6,  5, 156, 'v'),
      Day.new( 6,  6, 157, nil),
      Day.new( 6,  7, 158, 'xiii'),
      Day.new( 6,  8, 159, 'ii'),
      Day.new( 6,  9, 160, nil),
      Day.new( 6, 10, 161, 'x'),
      Day.new( 6, 11, 162, nil),
      Day.new( 6, 12, 163, 'xviii'),
      Day.new( 6, 13, 164, 'vii'),
      Day.new( 6, 14, 165, nil),
      Day.new( 6, 15, 166, 'xv'),
      Day.new( 6, 16, 167, 'iiii'),
      Day.new( 6, 17, 168, nil),
      Day.new( 6, 18, 169, 'xii'),
      Day.new( 6, 19, 170, 'i'),
      Day.new( 6, 20, 171, nil),
      Day.new( 6, 21, 172, 'ix'),
      Day.new( 6, 22, 173, nil),
      Day.new( 6, 23, 174, 'xvii'),
      Day.new( 6, 24, 175, 'vi'),
      Day.new( 6, 25, 176, nil),
      Day.new( 6, 26, 177, 'xiiii'),
      Day.new( 6, 27, 178, 'iii'),
      Day.new( 6, 28, 179, nil),
      Day.new( 6, 29, 180, 'xi'),
      Day.new( 6, 30, 181, nil),
      Day.new( 7,  1, 182, 'xix'),
      Day.new( 7,  2, 183, 'viii'),
      Day.new( 7,  3, 184, nil),
      Day.new( 7,  4, 185, 'xvi'),
      Day.new( 7,  5, 186, 'v'),
      Day.new( 7,  6, 187, nil),
      Day.new( 7,  7, 188, 'xiii'),
      Day.new( 7,  8, 189, 'ii'),
      Day.new( 7,  9, 190, nil),
      Day.new( 7, 10, 191, 'x'),
      Day.new( 7, 11, 192, nil),
      Day.new( 7, 12, 193, 'xviii'),
      Day.new( 7, 13, 194, 'vii'),
      Day.new( 7, 14, 195, nil),
      Day.new( 7, 15, 196, 'xv'),
      Day.new( 7, 16, 197, 'iiii'),
      Day.new( 7, 17, 198, nil),
      Day.new( 7, 18, 199, 'xii'),
      Day.new( 7, 19, 200, 'i'),
      Day.new( 7, 20, 201, nil),
      Day.new( 7, 21, 202, 'ix'),
      Day.new( 7, 22, 203, nil),
      Day.new( 7, 23, 204, 'xvii'),
      Day.new( 7, 24, 205, 'vi'),
      Day.new( 7, 25, 206, nil),
      Day.new( 7, 26, 207, 'xiiii'),
      Day.new( 7, 27, 208, 'iii'),
      Day.new( 7, 28, 209, nil),
      Day.new( 7, 29, 210, 'xi'),
      Day.new( 7, 30, 211, 'xix'),
      Day.new( 7, 31, 212, nil),
      Day.new( 8,  1, 213, 'viii'),
      Day.new( 8,  2, 214, 'xvi'),
      Day.new( 8,  3, 215, 'v'),
      Day.new( 8,  4, 216, nil),
      Day.new( 8,  5, 217, 'xiii'),
      Day.new( 8,  6, 218, 'ii'),
      Day.new( 8,  7, 219, nil),
      Day.new( 8,  8, 220, 'x'),
      Day.new( 8,  9, 221, nil),
      Day.new( 8, 10, 222, 'xviii'),
      Day.new( 8, 11, 223, 'vii'),
      Day.new( 8, 12, 224, nil),
      Day.new( 8, 13, 225, 'xv'),
      Day.new( 8, 14, 226, 'iiii'),
      Day.new( 8, 15, 227, nil),
      Day.new( 8, 16, 228, 'xii'),
      Day.new( 8, 17, 229, 'i'),
      Day.new( 8, 18, 230, nil),
      Day.new( 8, 19, 231, 'ix'),
      Day.new( 8, 20, 232, nil),
      Day.new( 8, 21, 233, 'xvii'),
      Day.new( 8, 22, 234, 'vi'),
      Day.new( 8, 23, 235, nil),
      Day.new( 8, 24, 236, 'xiiii'),
      Day.new( 8, 25, 237, 'iii'),
      Day.new( 8, 26, 238, nil),
      Day.new( 8, 27, 239, 'xi'),
      Day.new( 8, 28, 240, 'xix'),
      Day.new( 8, 29, 241, nil),
      Day.new( 8, 30, 242, 'viii'),
      Day.new( 8, 31, 243, nil),
      Day.new( 9,  1, 244, 'xvi'),
      Day.new( 9,  2, 245, 'v'),
      Day.new( 9,  3, 246, nil),
      Day.new( 9,  4, 247, 'xiii'),
      Day.new( 9,  5, 248, 'ii'),
      Day.new( 9,  6, 249, nil),
      Day.new( 9,  7, 250, 'x'),
      Day.new( 9,  8, 251, nil),
      Day.new( 9,  9, 252, 'xviii'),
      Day.new( 9, 10, 253, 'vii'),
      Day.new( 9, 11, 254, nil),
      Day.new( 9, 12, 255, 'xv'),
      Day.new( 9, 13, 256, 'iiii'),
      Day.new( 9, 14, 257, nil),
      Day.new( 9, 15, 258, 'xii'),
      Day.new( 9, 16, 259, 'i'),
      Day.new( 9, 17, 260, nil),
      Day.new( 9, 18, 261, 'ix'),
      Day.new( 9, 19, 262, nil),
      Day.new( 9, 20, 263, 'xvii'),
      Day.new( 9, 21, 264, 'vi'),
      Day.new( 9, 22, 265, nil),
      Day.new( 9, 23, 266, 'xiiii'),
      Day.new( 9, 24, 267, 'iii'),
      Day.new( 9, 25, 268, nil),
      Day.new( 9, 26, 269, 'xi'),
      Day.new( 9, 27, 270, 'xix'),
      Day.new( 9, 28, 271, nil),
      Day.new( 9, 29, 272, 'viii'),
      Day.new( 9, 30, 273, nil),
      Day.new(10,  1, 274, 'xvi'),
      Day.new(10,  2, 275, 'v'),
      Day.new(10,  3, 276, 'xiii'),
      Day.new(10,  4, 277, 'ii'),
      Day.new(10,  5, 278, nil),
      Day.new(10,  6, 279, 'x'),
      Day.new(10,  7, 280, nil),
      Day.new(10,  8, 281, 'xviii'),
      Day.new(10,  9, 282, 'vii'),
      Day.new(10, 10, 283, nil),
      Day.new(10, 11, 284, 'xv'),
      Day.new(10, 12, 285, 'iiii'),
      Day.new(10, 13, 286, nil),
      Day.new(10, 14, 287, 'xii'),
      Day.new(10, 15, 288, 'i'),
      Day.new(10, 16, 289, nil),
      Day.new(10, 17, 290, 'ix'),
      Day.new(10, 18, 291, nil),
      Day.new(10, 19, 292, 'xvii'),
      Day.new(10, 20, 293, 'vi'),
      Day.new(10, 21, 294, nil),
      Day.new(10, 22, 295, 'xiiii'),
      Day.new(10, 23, 296, 'iii'),
      Day.new(10, 24, 297, nil),
      Day.new(10, 25, 298, 'xi'),
      Day.new(10, 26, 299, 'xix'),
      Day.new(10, 27, 300, nil),
      Day.new(10, 28, 301, 'viii'),
      Day.new(10, 29, 302, nil),
      Day.new(10, 30, 303, 'xvi'),
      Day.new(10, 31, 304, 'v'),
      Day.new(11,  1, 305, nil),
      Day.new(11,  2, 306, 'xiii'),
      Day.new(11,  3, 307, 'ii'),
      Day.new(11,  4, 308, nil),
      Day.new(11,  5, 309, 'x'),
      Day.new(11,  6, 310, nil),
      Day.new(11,  7, 311, 'xviii'),
      Day.new(11,  8, 312, 'vii'),
      Day.new(11,  9, 313, nil),
      Day.new(11, 10, 314, 'xv'),
      Day.new(11, 11, 315, 'iiii'),
      Day.new(11, 12, 316, nil),
      Day.new(11, 13, 317, 'xii'),
      Day.new(11, 14, 318, 'i'),
      Day.new(11, 15, 319, nil),
      Day.new(11, 16, 320, 'ix'),
      Day.new(11, 17, 321, nil),
      Day.new(11, 18, 322, 'xvii'),
      Day.new(11, 19, 323, 'vi'),
      Day.new(11, 20, 324, nil),
      Day.new(11, 21, 325, 'xiiii'),
      Day.new(11, 22, 326, 'iii'),
      Day.new(11, 23, 327, nil),
      Day.new(11, 24, 328, 'xi'),
      Day.new(11, 25, 329, 'xix'),
      Day.new(11, 26, 330, nil),
      Day.new(11, 27, 331, 'viii'),
      Day.new(11, 28, 332, nil),
      Day.new(11, 29, 333, 'xvi'),
      Day.new(11, 30, 334, 'v'),
      Day.new(12,  1, 335, 'xiii'),
      Day.new(12,  2, 336, 'ii'),
      Day.new(12,  3, 337, nil),
      Day.new(12,  4, 338, 'x'),
      Day.new(12,  5, 339, nil),
      Day.new(12,  6, 340, 'xviii'),
      Day.new(12,  7, 341, 'vii'),
      Day.new(12,  8, 342, nil),
      Day.new(12,  9, 343, 'xv'),
      Day.new(12, 10, 344, 'iiii'),
      Day.new(12, 11, 345, nil),
      Day.new(12, 12, 346, 'xii'),
      Day.new(12, 13, 347, 'i'),
      Day.new(12, 14, 348, nil),
      Day.new(12, 15, 349, 'ix'),
      Day.new(12, 16, 350, nil),
      Day.new(12, 17, 351, 'xvii'),
      Day.new(12, 18, 352, 'vi'),
      Day.new(12, 19, 353, nil),
      Day.new(12, 20, 354, 'xiiii'),
      Day.new(12, 21, 355, 'iii'),
      Day.new(12, 22, 356, nil),
      Day.new(12, 23, 357, 'xi'),
      Day.new(12, 24, 358, 'xix'),
      Day.new(12, 25, 359, nil),
      Day.new(12, 26, 360, 'viii'),
      Day.new(12, 27, 361, nil),
      Day.new(12, 28, 362, 'xvi'),
      Day.new(12, 29, 363, 'v'),
      Day.new(12, 30, 364, nil),
      Day.new(12, 31, 365, 'xiii')
    ]

    DATE_HASH =
      DAY_TABLE.map{ |d| [d.month_number, d.day_number] }.zip(
        DAY_TABLE.map{ |d| {ordinal: d.ordinal, golden_number: d.golden_number} }
      ).to_h

    DATE_HASH.default = {ordinal: 0, golden_number: 'ERROR'}

    DAY_TABLE2 = [
      {
        month_number:      1,
        day_number:        1,
        golden_number:    'iii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      1,
        day_number:        2,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      1,
        day_number:        3,
        golden_number:    'xi',
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      1,
        day_number:        4,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      1,
        day_number:        5,
        golden_number:    'xix',
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      1,
        day_number:        6,
        golden_number:    'viii',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      1,
        day_number:        7,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      1,
        day_number:        8,
        golden_number:    'xvi',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      1,
        day_number:        9,
        golden_number:    'v',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      1,
        day_number:       10,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      1,
        day_number:       11,
        golden_number:    'xiii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      1,
        day_number:       12,
        golden_number:    'ii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      1,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      1,
        day_number:       14,
        golden_number:    'x',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xix'
      },
      {
        month_number:      1,
        day_number:       15,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:      1,
        day_number:       16,
        golden_number:    'xviii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      1,
        day_number:       17,
        golden_number:    'vii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      1,
        day_number:       18,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      1,
        day_number:       19,
        golden_number:    'xv',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      1,
        day_number:       20,
        golden_number:    'iiii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      1,
        day_number:       21,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      1,
        day_number:       22,
        golden_number:    'xii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      1,
        day_number:       23,
        golden_number:    'i',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      1,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      1,
        day_number:       25,
        golden_number:    'ix',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      1,
        day_number:       26,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      1,
        day_number:       27,
        golden_number:    'xvii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      1,
        day_number:       28,
        golden_number:    'vi',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      1,
        day_number:       29,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      1,
        day_number:       30,
        golden_number:    'xiiii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      1,
        day_number:       31,
        golden_number:    'iii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      2,
        day_number:        1,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      2,
        day_number:        2,
        golden_number:    'xi',
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      2,
        day_number:        3,
        golden_number:    'xix',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      2,
        day_number:        4,
        golden_number:    'viii',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      2,
        day_number:        5,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      2,
        day_number:        6,
        golden_number:    'xvi',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      2,
        day_number:        7,
        golden_number:    'v',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      2,
        day_number:        8,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      2,
        day_number:        9,
        golden_number:    'xiii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      2,
        day_number:       10,
        golden_number:    'ii',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      2,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      2,
        day_number:       12,
        golden_number:    'x',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      2,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      2,
        day_number:       14,
        golden_number:    'xviii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      2,
        day_number:       15,
        golden_number:    'vii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      2,
        day_number:       16,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      2,
        day_number:       17,
        golden_number:    'xv',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      2,
        day_number:       18,
        golden_number:    'iiii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      2,
        day_number:       19,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      2,
        day_number:       20,
        golden_number:    'xii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      2,
        day_number:       21,
        golden_number:    'i',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      2,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      2,
        day_number:       23,
        golden_number:    'ix',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      2,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      2,
        day_number:       25,
        golden_number:    'xvii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      2,
        day_number:       26,
        golden_number:    'vi',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      2,
        day_number:       27,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      2,
        day_number:       28,
        golden_number:    'xiiii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      3,
        day_number:        1,
        golden_number:    'iii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      3,
        day_number:        2,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'vi'
      },
      {
        month_number:      3,
        day_number:        3,
        golden_number:    'xi',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'v'
      },
      {
        month_number:      3,
        day_number:        4,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      3,
        day_number:        5,
        golden_number:    'xix',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      3,
        day_number:        6,
        golden_number:    'viii',
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      3,
        day_number:        7,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      3,
        day_number:        8,
        golden_number:    'xvi',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      3,
        day_number:        9,
        golden_number:    'v',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      3,
        day_number:       10,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      3,
        day_number:       11,
        golden_number:    'xiii',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      3,
        day_number:       12,
        golden_number:    'ii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      3,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      3,
        day_number:       14,
        golden_number:    'x',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      3,
        day_number:       15,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      3,
        day_number:       16,
        golden_number:    'xviii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      3,
        day_number:       17,
        golden_number:    'vii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      3,
        day_number:       18,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      3,
        day_number:       19,
        golden_number:    'xv',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      3,
        day_number:       20,
        golden_number:    'iiii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      3,
        day_number:       21,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      3,
        day_number:       22,
        golden_number:    'xii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      3,
        day_number:       23,
        golden_number:    'i',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      3,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      3,
        day_number:       25,
        golden_number:    'ix',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      3,
        day_number:       26,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      3,
        day_number:       27,
        golden_number:    'xvii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      3,
        day_number:       28,
        golden_number:    'vi',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      3,
        day_number:       29,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      3,
        day_number:       30,
        golden_number:    'xiiii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      3,
        day_number:       31,
        golden_number:    'iii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      4,
        day_number:        1,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      4,
        day_number:        2,
        golden_number:    'xi',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      4,
        day_number:        3,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      4,
        day_number:        4,
        golden_number:    'xix',
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      4,
        day_number:        5,
        golden_number:    'viii',
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      4,
        day_number:        6,
        golden_number:    'xvi',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      4,
        day_number:        7,
        golden_number:    'v',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      4,
        day_number:        8,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      4,
        day_number:        9,
        golden_number:    'xiii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      4,
        day_number:       10,
        golden_number:    'ii',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      4,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      4,
        day_number:       12,
        golden_number:    'x',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      4,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      4,
        day_number:       14,
        golden_number:    'xviii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:      4,
        day_number:       15,
        golden_number:    'vii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      4,
        day_number:       16,
        golden_number:    'vii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      4,
        day_number:       17,
        golden_number:    'xv',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      4,
        day_number:       18,
        golden_number:    'iiii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      4,
        day_number:       19,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      4,
        day_number:       20,
        golden_number:    'xii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      4,
        day_number:       21,
        golden_number:    'i',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      4,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      4,
        day_number:       23,
        golden_number:    'ix',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      4,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      4,
        day_number:       25,
        golden_number:    'xvii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      4,
        day_number:       26,
        golden_number:    'vi',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      4,
        day_number:       27,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      4,
        day_number:       28,
        golden_number:    'xiiii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      4,
        day_number:       29,
        golden_number:    'iii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      4,
        day_number:       30,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      5,
        day_number:        1,
        golden_number:    'xi',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      5,
        day_number:        2,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       'vi'
      },
      {
        month_number:      5,
        day_number:        3,
        golden_number:    'xix',
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       'v'
      },
      {
        month_number:      5,
        day_number:        4,
        golden_number:    'viii',
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      5,
        day_number:        5,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      5,
        day_number:        6,
        golden_number:    'xvi',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      5,
        day_number:        7,
        golden_number:    'v',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      5,
        day_number:        8,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      5,
        day_number:        9,
        golden_number:    'xiii',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      5,
        day_number:       10,
        golden_number:    'ii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      5,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      5,
        day_number:       12,
        golden_number:    'x',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      5,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      5,
        day_number:       14,
        golden_number:    'xviii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      5,
        day_number:       15,
        golden_number:    'vii',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      5,
        day_number:       16,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      5,
        day_number:       17,
        golden_number:    'xv',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      5,
        day_number:       18,
        golden_number:    'iiii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      5,
        day_number:       19,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      5,
        day_number:       20,
        golden_number:    'xii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      5,
        day_number:       21,
        golden_number:    'i',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      5,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      5,
        day_number:       23,
        golden_number:    'ix',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      5,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      5,
        day_number:       25,
        golden_number:    'xvii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      5,
        day_number:       26,
        golden_number:    'vi',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      5,
        day_number:       27,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      5,
        day_number:       28,
        golden_number:    'xiiii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      5,
        day_number:       29,
        golden_number:    'iii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      5,
        day_number:       30,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      5,
        day_number:       31,
        golden_number:    'xi',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      6,
        day_number:        1,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      6,
        day_number:        2,
        golden_number:    'xix',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      6,
        day_number:        3,
        golden_number:    'viii',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      6,
        day_number:        4,
        golden_number:    'xvi',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      6,
        day_number:        5,
        golden_number:    'v',
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      6,
        day_number:        6,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      6,
        day_number:        7,
        golden_number:    'xiii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      6,
        day_number:        8,
        golden_number:    'ii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      6,
        day_number:        9,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      6,
        day_number:       10,
        golden_number:    'x',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      6,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      6,
        day_number:       12,
        golden_number:    'xviii',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      6,
        day_number:       13,
        golden_number:    'vii',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      6,
        day_number:       14,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:      6,
        day_number:       15,
        golden_number:    'xv',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      6,
        day_number:       16,
        golden_number:    'iiii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      6,
        day_number:       17,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      6,
        day_number:       18,
        golden_number:    'xii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      6,
        day_number:       19,
        golden_number:    'i',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      6,
        day_number:       20,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      6,
        day_number:       21,
        golden_number:    'ix',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      6,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      6,
        day_number:       23,
        golden_number:    'xvii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      6,
        day_number:       24,
        golden_number:    'vi',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      6,
        day_number:       25,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      6,
        day_number:       26,
        golden_number:    'xiiii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      6,
        day_number:       27,
        golden_number:    'iii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      6,
        day_number:       28,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      6,
        day_number:       29,
        golden_number:    'xi',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      6,
        day_number:       30,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      7,
        day_number:        1,
        golden_number:    'xix',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      7,
        day_number:        2,
        golden_number:    'viii',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'vi'
      },
      {
        month_number:      7,
        day_number:        3,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'v'
      },
      {
        month_number:      7,
        day_number:        4,
        golden_number:    'xvi',
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      7,
        day_number:        5,
        golden_number:    'v',
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      7,
        day_number:        6,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      7,
        day_number:        7,
        golden_number:    'xiii',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      7,
        day_number:        8,
        golden_number:    'ii',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      7,
        day_number:        9,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      7,
        day_number:       10,
        golden_number:    'x',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      7,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      7,
        day_number:       12,
        golden_number:    'xviii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      7,
        day_number:       13,
        golden_number:    'vii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      7,
        day_number:       14,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      7,
        day_number:       15,
        golden_number:    'xv',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      7,
        day_number:       16,
        golden_number:    'iiii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      7,
        day_number:       17,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      7,
        day_number:       18,
        golden_number:    'xii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      7,
        day_number:       19,
        golden_number:    'i',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      7,
        day_number:       20,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      7,
        day_number:       21,
        golden_number:    'ix',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      7,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      7,
        day_number:       23,
        golden_number:    'xvii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      7,
        day_number:       24,
        golden_number:    'vi',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      7,
        day_number:       25,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      7,
        day_number:       26,
        golden_number:    'xiiii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      7,
        day_number:       27,
        golden_number:    'iii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      7,
        day_number:       28,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      7,
        day_number:       29,
        golden_number:    'xi',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      7,
        day_number:       30,
        golden_number:    'xix',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      7,
        day_number:       31,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      8,
        day_number:        1,
        golden_number:    'viii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      8,
        day_number:        2,
        golden_number:    'xvi',
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      8,
        day_number:        3,
        golden_number:    'v',
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      8,
        day_number:        4,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      8,
        day_number:        5,
        golden_number:    'xiii',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      8,
        day_number:        6,
        golden_number:    'ii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      8,
        day_number:        7,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      8,
        day_number:        8,
        golden_number:    'x',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      8,
        day_number:        9,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      8,
        day_number:       10,
        golden_number:    'xviii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      8,
        day_number:       11,
        golden_number:    'vii',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      8,
        day_number:       12,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      8,
        day_number:       13,
        golden_number:    'xv',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      8,
        day_number:       14,
        golden_number:    'iiii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xix'
      },
      {
        month_number:      8,
        day_number:       15,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:      8,
        day_number:       16,
        golden_number:    'xii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      8,
        day_number:       17,
        golden_number:    'i',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      8,
        day_number:       18,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      8,
        day_number:       19,
        golden_number:    'ix',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      8,
        day_number:       20,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      8,
        day_number:       21,
        golden_number:    'xvii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      8,
        day_number:       22,
        golden_number:    'vi',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      8,
        day_number:       23,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      8,
        day_number:       24,
        golden_number:    'xiiii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      8,
        day_number:       25,
        golden_number:    'iii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      8,
        day_number:       26,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      8,
        day_number:       27,
        golden_number:    'xi',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      8,
        day_number:       28,
        golden_number:    'xix',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      8,
        day_number:       29,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      8,
        day_number:       30,
        golden_number:    'viii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      8,
        day_number:       31,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:      9,
        day_number:        1,
        golden_number:    'xvi',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:      9,
        day_number:        2,
        golden_number:    'v',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:      9,
        day_number:        3,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:      9,
        day_number:        4,
        golden_number:    'xiii',
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:      9,
        day_number:        5,
        golden_number:    'ii',
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:      9,
        day_number:        6,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:      9,
        day_number:        7,
        golden_number:    'x',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:      9,
        day_number:        8,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:      9,
        day_number:        9,
        golden_number:    'xviii',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:      9,
        day_number:       10,
        golden_number:    'vii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:      9,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:      9,
        day_number:       12,
        golden_number:    'xv',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:      9,
        day_number:       13,
        golden_number:    'iiii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:      9,
        day_number:       14,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:      9,
        day_number:       15,
        golden_number:    'xii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:      9,
        day_number:       16,
        golden_number:    'i',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:      9,
        day_number:       17,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:      9,
        day_number:       18,
        golden_number:    'ix',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:      9,
        day_number:       19,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:      9,
        day_number:       20,
        golden_number:    'xvii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:      9,
        day_number:       21,
        golden_number:    'vi',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:      9,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:      9,
        day_number:       23,
        golden_number:    'xiiii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:      9,
        day_number:       24,
        golden_number:    'iii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:      9,
        day_number:       25,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:      9,
        day_number:       26,
        golden_number:    'xi',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:      9,
        day_number:       27,
        golden_number:    'xix',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:      9,
        day_number:       28,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:      9,
        day_number:       29,
        golden_number:    'viii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:      9,
        day_number:       30,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:     10,
        day_number:        1,
        golden_number:    'xvi',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:     10,
        day_number:        2,
        golden_number:    'v',
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'vi'
      },
      {
        month_number:     10,
        day_number:        3,
        golden_number:    'xiii',
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       'v'
      },
      {
        month_number:     10,
        day_number:        4,
        golden_number:    'ii',
        dominical_letter: 'd',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:     10,
        day_number:        5,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:     10,
        day_number:        6,
        golden_number:    'x',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:     10,
        day_number:        7,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:     10,
        day_number:        8,
        golden_number:    'xviii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:     10,
        day_number:        9,
        golden_number:    'vii',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:     10,
        day_number:       10,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:     10,
        day_number:       11,
        golden_number:    'xv',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:     10,
        day_number:       12,
        golden_number:    'iiii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:     10,
        day_number:       13,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:     10,
        day_number:       14,
        golden_number:    'xii',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:     10,
        day_number:       15,
        golden_number:    'i',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:     10,
        day_number:       16,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:     10,
        day_number:       17,
        golden_number:    'ix',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:     10,
        day_number:       18,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:     10,
        day_number:       19,
        golden_number:    'xvii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:     10,
        day_number:       20,
        golden_number:    'vi',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:     10,
        day_number:       21,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:     10,
        day_number:       22,
        golden_number:    'xiiii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:     10,
        day_number:       23,
        golden_number:    'iii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:     10,
        day_number:       24,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:     10,
        day_number:       25,
        golden_number:    'xi',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:     10,
        day_number:       26,
        golden_number:    'xix',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:     10,
        day_number:       27,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:     10,
        day_number:       28,
        golden_number:    'viii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:     10,
        day_number:       29,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:     10,
        day_number:       30,
        golden_number:    'xvi',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:     10,
        day_number:       31,
        golden_number:    'v',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:     11,
        day_number:        1,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:     11,
        day_number:        2,
        golden_number:    'xiii',
        dominical_letter: 'e',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:     11,
        day_number:        3,
        golden_number:    'ii',
        dominical_letter: 'f',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:     11,
        day_number:        4,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:     11,
        day_number:        5,
        golden_number:    'x',
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:     11,
        day_number:        6,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:     11,
        day_number:        7,
        golden_number:    'xviii',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:     11,
        day_number:        8,
        golden_number:    'vii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:     11,
        day_number:        9,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:     11,
        day_number:       10,
        golden_number:    'xv',
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:     11,
        day_number:       11,
        golden_number:    'iiii',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:     11,
        day_number:       12,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:     11,
        day_number:       13,
        golden_number:    'xii',
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:     11,
        day_number:       14,
        golden_number:    'i',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:     11,
        day_number:       15,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:     11,
        day_number:       16,
        golden_number:    'ix',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:     11,
        day_number:       17,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:     11,
        day_number:       18,
        golden_number:    'xvii',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:     11,
        day_number:       19,
        golden_number:    'vi',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:     11,
        day_number:       20,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:     11,
        day_number:       21,
        golden_number:    'xiiii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:     11,
        day_number:       22,
        golden_number:    'iii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:     11,
        day_number:       23,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:     11,
        day_number:       24,
        golden_number:    'xi',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:     11,
        day_number:       25,
        golden_number:    'xix',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:     11,
        day_number:       26,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:     11,
        day_number:       27,
        golden_number:    'viii',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:     11,
        day_number:       28,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:     11,
        day_number:       29,
        golden_number:    'xvi',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:     11,
        day_number:       30,
        golden_number:    'v',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'ii'
      },
      {
        month_number:     12,
        day_number:        1,
        golden_number:    'xiii',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       nil
      },
      {
        month_number:     12,
        day_number:        2,
        golden_number:    'ii',
        dominical_letter: 'g',
        kni:              'nones',
        kni_number:       'iv'
      },
      {
        month_number:     12,
        day_number:        3,
        golden_number:    nil,
        dominical_letter: 'A',
        kni:              'nones',
        kni_number:       'iii'
      },
      {
        month_number:     12,
        day_number:        4,
        golden_number:    'x',
        dominical_letter: 'b',
        kni:              'nones',
        kni_number:       'ii'
      },
      {
        month_number:     12,
        day_number:        5,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'nones',
        kni_number:       nil
      },
      {
        month_number:     12,
        day_number:        6,
        golden_number:    'xviii',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       'viii'
      },
      {
        month_number:     12,
        day_number:        7,
        golden_number:    'vii',
        dominical_letter: 'e',
        kni:              'ides',
        kni_number:       'vii'
      },
      {
        month_number:     12,
        day_number:        8,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'ides',
        kni_number:       'vi'
      },
      {
        month_number:     12,
        day_number:        9,
        golden_number:    'xv',
        dominical_letter: 'g',
        kni:              'ides',
        kni_number:       'v'
      },
      {
        month_number:     12,
        day_number:       10,
        golden_number:    'iiii',
        dominical_letter: 'A',
        kni:              'ides',
        kni_number:       'iv'
      },
      {
        month_number:     12,
        day_number:       11,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'ides',
        kni_number:       'iii'
      },
      {
        month_number:     12,
        day_number:       12,
        golden_number:    'xii',
        dominical_letter: 'c',
        kni:              'ides',
        kni_number:       'ii'
      },
      {
        month_number:     12,
        day_number:       13,
        golden_number:    'i',
        dominical_letter: 'd',
        kni:              'ides',
        kni_number:       nil
      },
      {
        month_number:     12,
        day_number:       14,
        golden_number:    nil,
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xix'
      },
      {
        month_number:     12,
        day_number:       15,
        golden_number:    'ix',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xviii'
      },
      {
        month_number:     12,
        day_number:       16,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'xvii'
      },
      {
        month_number:     12,
        day_number:       17,
        golden_number:    'xvii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'xvi'
      },
      {
        month_number:     12,
        day_number:       18,
        golden_number:    'vi',
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'xv'
      },
      {
        month_number:     12,
        day_number:       19,
        golden_number:    nil,
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'xiv'
      },
      {
        month_number:     12,
        day_number:       20,
        golden_number:    'xiiii',
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'xiii'
      },
      {
        month_number:     12,
        day_number:       21,
        golden_number:    'iii',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'xii'
      },
      {
        month_number:     12,
        day_number:       22,
        golden_number:    nil,
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'xi'
      },
      {
        month_number:     12,
        day_number:       23,
        golden_number:    'xi',
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'x'
      },
      {
        month_number:     12,
        day_number:       24,
        golden_number:    'xix',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'ix'
      },
      {
        month_number:     12,
        day_number:       25,
        golden_number:    nil,
        dominical_letter: 'b',
        kni:              'kalends',
        kni_number:       'viii'
      },
      {
        month_number:     12,
        day_number:       26,
        golden_number:    'viii',
        dominical_letter: 'c',
        kni:              'kalends',
        kni_number:       'vii'
      },
      {
        month_number:     12,
        day_number:       27,
        golden_number:    nil,
        dominical_letter: 'd',
        kni:              'kalends',
        kni_number:       'vi'
      },
      {
        month_number:     12,
        day_number:       28,
        golden_number:    'xvi',
        dominical_letter: 'e',
        kni:              'kalends',
        kni_number:       'v'
      },
      {
        month_number:     12,
        day_number:       29,
        golden_number:    'v',
        dominical_letter: 'f',
        kni:              'kalends',
        kni_number:       'iv'
      },
      {
        month_number:     12,
        day_number:       30,
        golden_number:    nil,
        dominical_letter: 'g',
        kni:              'kalends',
        kni_number:       'iii'
      },
      {
        month_number:     12,
        day_number:       31,
        golden_number:    'xiii',
        dominical_letter: 'A',
        kni:              'kalends',
        kni_number:       'ii'
      }
    ]

  end
end