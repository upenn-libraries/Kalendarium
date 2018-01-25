module Kal
  module Days

    Day = Struct.new(:ordinal, :month_number, :day_number, :golden_number, :dominical_letter, :kni, :kni_number)

    DAY_TABLE = [
      Day.new(  1,  1,  1, 'iii', 'A', 'kalends', nil),
      Day.new(  2,  1,  2,  nil, 'b', 'nones', 'iv'),
      Day.new(  3,  1,  3, 'xi', 'c', 'nones', 'iii'),
      Day.new(  4,  1,  4,  nil, 'd', 'nones', 'ii'),
      Day.new(  5,  1,  5, 'xix', 'e', 'nones', nil),
      Day.new(  6,  1,  6, 'viii', 'f', 'ides', 'viii'),
      Day.new(  7,  1,  7,  nil, 'g', 'ides', 'vii'),
      Day.new(  8,  1,  8, 'xvi', 'A', 'ides', 'vi'),
      Day.new(  9,  1,  9, 'v', 'b', 'ides', 'v'),
      Day.new( 10,  1, 10,  nil, 'c', 'ides', 'iv'),
      Day.new( 11,  1, 11, 'xiii', 'd', 'ides', 'iii'),
      Day.new( 12,  1, 12, 'ii', 'e', 'ides', 'ii'),
      Day.new( 13,  1, 13,  nil, 'f', 'ides', nil),
      Day.new( 14,  1, 14, 'x', 'g', 'kalends', 'xix'),
      Day.new( 15,  1, 15,  nil, 'A', 'kalends', 'xviii'),
      Day.new( 16,  1, 16, 'xviii', 'b', 'kalends', 'xvii'),
      Day.new( 17,  1, 17, 'vii', 'c', 'kalends', 'xvi'),
      Day.new( 18,  1, 18,  nil, 'd', 'kalends', 'xv'),
      Day.new( 19,  1, 19, 'xv', 'e', 'kalends', 'xiv'),
      Day.new( 20,  1, 20, 'iiii', 'f', 'kalends', 'xiii'),
      Day.new( 21,  1, 21,  nil, 'g', 'kalends', 'xii'),
      Day.new( 22,  1, 22, 'xii', 'A', 'kalends', 'xi'),
      Day.new( 23,  1, 23, 'i', 'b', 'kalends', 'x'),
      Day.new( 24,  1, 24,  nil, 'c', 'kalends', 'ix'),
      Day.new( 25,  1, 25, 'ix', 'd', 'kalends', 'viii'),
      Day.new( 26,  1, 26,  nil, 'e', 'kalends', 'vii'),
      Day.new( 27,  1, 27, 'xvii', 'f', 'kalends', 'vi'),
      Day.new( 28,  1, 28, 'vi', 'g', 'kalends', 'v'),
      Day.new( 29,  1, 29,  nil, 'A', 'kalends', 'iv'),
      Day.new( 30,  1, 30, 'xiiii', 'b', 'kalends', 'iii'),
      Day.new( 31,  1, 31, 'iii', 'c', 'kalends', 'ii'),
      Day.new( 32,  2,  1,  nil, 'd', 'kalends', nil),
      Day.new( 33,  2,  2, 'xi', 'e', 'nones', 'iv'),
      Day.new( 34,  2,  3, 'xix', 'f', 'nones', 'iii'),
      Day.new( 35,  2,  4, 'viii', 'g', 'nones', 'ii'),
      Day.new( 36,  2,  5,  nil, 'A', 'nones', nil),
      Day.new( 37,  2,  6, 'xvi', 'b', 'ides', 'viii'),
      Day.new( 38,  2,  7, 'v', 'c', 'ides', 'vii'),
      Day.new( 39,  2,  8,  nil, 'd', 'ides', 'vi'),
      Day.new( 40,  2,  9, 'xiii', 'e', 'ides', 'v'),
      Day.new( 41,  2, 10, 'ii', 'f', 'ides', 'iv'),
      Day.new( 42,  2, 11,  nil, 'g', 'ides', 'iii'),
      Day.new( 43,  2, 12, 'x', 'A', 'ides', 'ii'),
      Day.new( 44,  2, 13,  nil, 'b', 'ides', nil),
      Day.new( 45,  2, 14, 'xviii', 'c', 'kalends', 'xvi'),
      Day.new( 46,  2, 15, 'vii', 'd', 'kalends', 'xv'),
      Day.new( 47,  2, 16,  nil, 'e', 'kalends', 'xiv'),
      Day.new( 48,  2, 17, 'xv', 'f', 'kalends', 'xiii'),
      Day.new( 49,  2, 18, 'iiii', 'g', 'kalends', 'xii'),
      Day.new( 50,  2, 19,  nil, 'A', 'kalends', 'xi'),
      Day.new( 51,  2, 20, 'xii', 'b', 'kalends', 'x'),
      Day.new( 52,  2, 21, 'i', 'c', 'kalends', 'ix'),
      Day.new( 53,  2, 22,  nil, 'd', 'kalends', 'viii'),
      Day.new( 54,  2, 23, 'ix', 'e', 'kalends', 'vii'),
      Day.new( 55,  2, 24,  nil, 'f', 'kalends', 'vi'),
      Day.new( 56,  2, 25, 'xvii', 'g', 'kalends', 'v'),
      Day.new( 57,  2, 26, 'vi', 'A', 'kalends', 'iv'),
      Day.new( 58,  2, 27,  nil, 'b', 'kalends', 'iii'),
      Day.new( 59,  2, 28, 'xiiii', 'c', 'kalends', 'ii'),
      Day.new( 60,  3,  1, 'iii', 'd', 'kalends', nil),
      Day.new( 61,  3,  2,  nil, 'e', 'nones', 'vi'),
      Day.new( 62,  3,  3, 'xi', 'f', 'nones', 'v'),
      Day.new( 63,  3,  4,  nil, 'g', 'nones', 'iv'),
      Day.new( 64,  3,  5, 'xix', 'A', 'nones', 'iii'),
      Day.new( 65,  3,  6, 'viii', 'b', 'nones', 'ii'),
      Day.new( 66,  3,  7,  nil, 'c', 'nones', nil),
      Day.new( 67,  3,  8, 'xvi', 'd', 'ides', 'viii'),
      Day.new( 68,  3,  9, 'v', 'e', 'ides', 'vii'),
      Day.new( 69,  3, 10,  nil, 'f', 'ides', 'vi'),
      Day.new( 70,  3, 11, 'xiii', 'g', 'ides', 'v'),
      Day.new( 71,  3, 12, 'ii', 'A', 'ides', 'iv'),
      Day.new( 72,  3, 13,  nil, 'b', 'ides', 'iii'),
      Day.new( 73,  3, 14, 'x', 'c', 'ides', 'ii'),
      Day.new( 74,  3, 15,  nil, 'd', 'ides', nil),
      Day.new( 75,  3, 16, 'xviii', 'e', 'kalends', 'xvii'),
      Day.new( 76,  3, 17, 'vii', 'f', 'kalends', 'xvi'),
      Day.new( 77,  3, 18,  nil, 'g', 'kalends', 'xv'),
      Day.new( 78,  3, 19, 'xv', 'A', 'kalends', 'xiv'),
      Day.new( 79,  3, 20, 'iiii', 'b', 'kalends', 'xiii'),
      Day.new( 80,  3, 21,  nil, 'c', 'kalends', 'xii'),
      Day.new( 81,  3, 22, 'xii', 'd', 'kalends', 'xi'),
      Day.new( 82,  3, 23, 'i', 'e', 'kalends', 'x'),
      Day.new( 83,  3, 24,  nil, 'f', 'kalends', 'ix'),
      Day.new( 84,  3, 25, 'ix', 'g', 'kalends', 'viii'),
      Day.new( 85,  3, 26,  nil, 'A', 'kalends', 'vii'),
      Day.new( 86,  3, 27, 'xvii', 'b', 'kalends', 'vi'),
      Day.new( 87,  3, 28, 'vi', 'c', 'kalends', 'v'),
      Day.new( 88,  3, 29,  nil, 'd', 'kalends', 'iv'),
      Day.new( 89,  3, 30, 'xiiii', 'e', 'kalends', 'iii'),
      Day.new( 90,  3, 31, 'iii', 'f', 'kalends', 'ii'),
      Day.new( 91,  4,  1,  nil, 'g', 'kalends', nil),
      Day.new( 92,  4,  2, 'xi', 'A', 'nones', 'iv'),
      Day.new( 93,  4,  3,  nil, 'b', 'nones', 'iii'),
      Day.new( 94,  4,  4, 'xix', 'c', 'nones', 'ii'),
      Day.new( 95,  4,  5, 'viii', 'd', 'nones', nil),
      Day.new( 96,  4,  6, 'xvi', 'e', 'ides', 'viii'),
      Day.new( 97,  4,  7, 'v', 'f', 'ides', 'vii'),
      Day.new( 98,  4,  8,  nil, 'g', 'ides', 'vi'),
      Day.new( 99,  4,  9, 'xiii', 'A', 'ides', 'v'),
      Day.new(100,  4, 10, 'ii', 'b', 'ides', 'iv'),
      Day.new(101,  4, 11,  nil, 'c', 'ides', 'iii'),
      Day.new(102,  4, 12, 'x', 'd', 'ides', 'ii'),
      Day.new(103,  4, 13,  nil, 'e', 'ides', nil),
      Day.new(104,  4, 14, 'xviii', 'f', 'kalends', 'xviii'),
      Day.new(105,  4, 15, 'vii', 'g', 'kalends', 'xvii'),
      Day.new(106,  4, 16, 'vii', 'A', 'kalends', 'xvi'),
      Day.new(107,  4, 17, 'xv', 'b', 'kalends', 'xv'),
      Day.new(108,  4, 18, 'iiii', 'c', 'kalends', 'xiv'),
      Day.new(109,  4, 19,  nil, 'd', 'kalends', 'xiii'),
      Day.new(110,  4, 20, 'xii', 'e', 'kalends', 'xii'),
      Day.new(111,  4, 21, 'i', 'f', 'kalends', 'xi'),
      Day.new(112,  4, 22,  nil, 'g', 'kalends', 'x'),
      Day.new(113,  4, 23, 'ix', 'A', 'kalends', 'ix'),
      Day.new(114,  4, 24,  nil, 'b', 'kalends', 'viii'),
      Day.new(115,  4, 25, 'xvii', 'c', 'kalends', 'vii'),
      Day.new(116,  4, 26, 'vi', 'd', 'kalends', 'vi'),
      Day.new(117,  4, 27,  nil, 'e', 'kalends', 'v'),
      Day.new(118,  4, 28, 'xiiii', 'f', 'kalends', 'iv'),
      Day.new(119,  4, 29, 'iii', 'g', 'kalends', 'iii'),
      Day.new(120,  4, 30,  nil, 'A', 'kalends', 'ii'),
      Day.new(121,  5,  1, 'xi', 'b', 'kalends', nil),
      Day.new(122,  5,  2,  nil, 'c', 'nones', 'vi'),
      Day.new(123,  5,  3, 'xix', 'd', 'nones', 'v'),
      Day.new(124,  5,  4, 'viii', 'e', 'nones', 'iv'),
      Day.new(125,  5,  5,  nil, 'f', 'nones', 'iii'),
      Day.new(126,  5,  6, 'xvi', 'g', 'nones', 'ii'),
      Day.new(127,  5,  7, 'v', 'A', 'nones', nil),
      Day.new(128,  5,  8,  nil, 'b', 'ides', 'viii'),
      Day.new(129,  5,  9, 'xiii', 'c', 'ides', 'vii'),
      Day.new(130,  5, 10, 'ii', 'd', 'ides', 'vi'),
      Day.new(131,  5, 11,  nil, 'e', 'ides', 'v'),
      Day.new(132,  5, 12, 'x', 'f', 'ides', 'iv'),
      Day.new(133,  5, 13,  nil, 'g', 'ides', 'iii'),
      Day.new(134,  5, 14, 'xviii', 'A', 'ides', 'ii'),
      Day.new(135,  5, 15, 'vii', 'b', 'ides', nil),
      Day.new(136,  5, 16,  nil, 'c', 'kalends', 'xvii'),
      Day.new(137,  5, 17, 'xv', 'd', 'kalends', 'xvi'),
      Day.new(138,  5, 18, 'iiii', 'e', 'kalends', 'xv'),
      Day.new(139,  5, 19,  nil, 'f', 'kalends', 'xiv'),
      Day.new(140,  5, 20, 'xii', 'g', 'kalends', 'xiii'),
      Day.new(141,  5, 21, 'i', 'A', 'kalends', 'xii'),
      Day.new(142,  5, 22,  nil, 'b', 'kalends', 'xi'),
      Day.new(143,  5, 23, 'ix', 'c', 'kalends', 'x'),
      Day.new(144,  5, 24,  nil, 'd', 'kalends', 'ix'),
      Day.new(145,  5, 25, 'xvii', 'e', 'kalends', 'viii'),
      Day.new(146,  5, 26, 'vi', 'f', 'kalends', 'vii'),
      Day.new(147,  5, 27,  nil, 'g', 'kalends', 'vi'),
      Day.new(148,  5, 28, 'xiiii', 'A', 'kalends', 'v'),
      Day.new(149,  5, 29, 'iii', 'b', 'kalends', 'iv'),
      Day.new(150,  5, 30,  nil, 'c', 'kalends', 'iii'),
      Day.new(151,  5, 31, 'xi', 'd', 'kalends', 'ii'),
      Day.new(152,  6,  1,  nil, 'e', 'kalends', nil),
      Day.new(153,  6,  2, 'xix', 'f', 'nones', 'iv'),
      Day.new(154,  6,  3, 'viii', 'g', 'nones', 'iii'),
      Day.new(155,  6,  4, 'xvi', 'A', 'nones', 'ii'),
      Day.new(156,  6,  5, 'v', 'b', 'nones', nil),
      Day.new(157,  6,  6,  nil, 'c', 'ides', 'viii'),
      Day.new(158,  6,  7, 'xiii', 'd', 'ides', 'vii'),
      Day.new(159,  6,  8, 'ii', 'e', 'ides', 'vi'),
      Day.new(160,  6,  9,  nil, 'f', 'ides', 'v'),
      Day.new(161,  6, 10, 'x', 'g', 'ides', 'iv'),
      Day.new(162,  6, 11,  nil, 'A', 'ides', 'iii'),
      Day.new(163,  6, 12, 'xviii', 'b', 'ides', 'ii'),
      Day.new(164,  6, 13, 'vii', 'c', 'ides', nil),
      Day.new(165,  6, 14,  nil, 'd', 'kalends', 'xviii'),
      Day.new(166,  6, 15, 'xv', 'e', 'kalends', 'xvii'),
      Day.new(167,  6, 16, 'iiii', 'f', 'kalends', 'xvi'),
      Day.new(168,  6, 17,  nil, 'g', 'kalends', 'xv'),
      Day.new(169,  6, 18, 'xii', 'A', 'kalends', 'xiv'),
      Day.new(170,  6, 19, 'i', 'b', 'kalends', 'xiii'),
      Day.new(171,  6, 20,  nil, 'c', 'kalends', 'xii'),
      Day.new(172,  6, 21, 'ix', 'd', 'kalends', 'xi'),
      Day.new(173,  6, 22,  nil, 'e', 'kalends', 'x'),
      Day.new(174,  6, 23, 'xvii', 'f', 'kalends', 'ix'),
      Day.new(175,  6, 24, 'vi', 'g', 'kalends', 'viii'),
      Day.new(176,  6, 25,  nil, 'A', 'kalends', 'vii'),
      Day.new(177,  6, 26, 'xiiii', 'b', 'kalends', 'vi'),
      Day.new(178,  6, 27, 'iii', 'c', 'kalends', 'v'),
      Day.new(179,  6, 28,  nil, 'd', 'kalends', 'iv'),
      Day.new(180,  6, 29, 'xi', 'e', 'kalends', 'iii'),
      Day.new(181,  6, 30,  nil, 'f', 'kalends', 'ii'),
      Day.new(182,  7,  1, 'xix', 'g', 'kalends', nil),
      Day.new(183,  7,  2, 'viii', 'A', 'nones', 'vi'),
      Day.new(184,  7,  3,  nil, 'b', 'nones', 'v'),
      Day.new(185,  7,  4, 'xvi', 'c', 'nones', 'iv'),
      Day.new(186,  7,  5, 'v', 'd', 'nones', 'iii'),
      Day.new(187,  7,  6,  nil, 'e', 'nones', 'ii'),
      Day.new(188,  7,  7, 'xiii', 'f', 'nones', nil),
      Day.new(189,  7,  8, 'ii', 'g', 'ides', 'viii'),
      Day.new(190,  7,  9,  nil, 'A', 'ides', 'vii'),
      Day.new(191,  7, 10, 'x', 'b', 'ides', 'vi'),
      Day.new(192,  7, 11,  nil, 'c', 'ides', 'v'),
      Day.new(193,  7, 12, 'xviii', 'd', 'ides', 'iv'),
      Day.new(194,  7, 13, 'vii', 'e', 'ides', 'iii'),
      Day.new(195,  7, 14,  nil, 'f', 'ides', 'ii'),
      Day.new(196,  7, 15, 'xv', 'g', 'ides', nil),
      Day.new(197,  7, 16, 'iiii', 'A', 'kalends', 'xvii'),
      Day.new(198,  7, 17,  nil, 'b', 'kalends', 'xvi'),
      Day.new(199,  7, 18, 'xii', 'c', 'kalends', 'xv'),
      Day.new(200,  7, 19, 'i', 'd', 'kalends', 'xiv'),
      Day.new(201,  7, 20,  nil, 'e', 'kalends', 'xiii'),
      Day.new(202,  7, 21, 'ix', 'f', 'kalends', 'xii'),
      Day.new(203,  7, 22,  nil, 'g', 'kalends', 'xi'),
      Day.new(204,  7, 23, 'xvii', 'A', 'kalends', 'x'),
      Day.new(205,  7, 24, 'vi', 'b', 'kalends', 'ix'),
      Day.new(206,  7, 25,  nil, 'c', 'kalends', 'viii'),
      Day.new(207,  7, 26, 'xiiii', 'd', 'kalends', 'vii'),
      Day.new(208,  7, 27, 'iii', 'e', 'kalends', 'vi'),
      Day.new(209,  7, 28,  nil, 'f', 'kalends', 'v'),
      Day.new(210,  7, 29, 'xi', 'g', 'kalends', 'iv'),
      Day.new(211,  7, 30, 'xix', 'A', 'kalends', 'iii'),
      Day.new(212,  7, 31,  nil, 'b', 'kalends', 'ii'),
      Day.new(213,  8,  1, 'viii', 'c', 'kalends', nil),
      Day.new(214,  8,  2, 'xvi', 'd', 'nones', 'iv'),
      Day.new(215,  8,  3, 'v', 'e', 'nones', 'iii'),
      Day.new(216,  8,  4,  nil, 'f', 'nones', 'ii'),
      Day.new(217,  8,  5, 'xiii', 'g', 'nones', nil),
      Day.new(218,  8,  6, 'ii', 'A', 'ides', 'viii'),
      Day.new(219,  8,  7,  nil, 'b', 'ides', 'vii'),
      Day.new(220,  8,  8, 'x', 'c', 'ides', 'vi'),
      Day.new(221,  8,  9,  nil, 'd', 'ides', 'v'),
      Day.new(222,  8, 10, 'xviii', 'e', 'ides', 'iv'),
      Day.new(223,  8, 11, 'vii', 'f', 'ides', 'iii'),
      Day.new(224,  8, 12,  nil, 'g', 'ides', 'ii'),
      Day.new(225,  8, 13, 'xv', 'A', 'ides', nil),
      Day.new(226,  8, 14, 'iiii', 'b', 'kalends', 'xix'),
      Day.new(227,  8, 15,  nil, 'c', 'kalends', 'xviii'),
      Day.new(228,  8, 16, 'xii', 'd', 'kalends', 'xvii'),
      Day.new(229,  8, 17, 'i', 'e', 'kalends', 'xvi'),
      Day.new(230,  8, 18,  nil, 'f', 'kalends', 'xv'),
      Day.new(231,  8, 19, 'ix', 'g', 'kalends', 'xiv'),
      Day.new(232,  8, 20,  nil, 'A', 'kalends', 'xiii'),
      Day.new(233,  8, 21, 'xvii', 'b', 'kalends', 'xii'),
      Day.new(234,  8, 22, 'vi', 'c', 'kalends', 'xi'),
      Day.new(235,  8, 23,  nil, 'd', 'kalends', 'x'),
      Day.new(236,  8, 24, 'xiiii', 'e', 'kalends', 'ix'),
      Day.new(237,  8, 25, 'iii', 'f', 'kalends', 'viii'),
      Day.new(238,  8, 26,  nil, 'g', 'kalends', 'vii'),
      Day.new(239,  8, 27, 'xi', 'A', 'kalends', 'vi'),
      Day.new(240,  8, 28, 'xix', 'b', 'kalends', 'v'),
      Day.new(241,  8, 29,  nil, 'c', 'kalends', 'iv'),
      Day.new(242,  8, 30, 'viii', 'd', 'kalends', 'iii'),
      Day.new(243,  8, 31,  nil, 'e', 'kalends', 'ii'),
      Day.new(244,  9,  1, 'xvi', 'f', 'kalends', nil),
      Day.new(245,  9,  2, 'v', 'g', 'nones', 'iv'),
      Day.new(246,  9,  3,  nil, 'A', 'nones', 'iii'),
      Day.new(247,  9,  4, 'xiii', 'b', 'nones', 'ii'),
      Day.new(248,  9,  5, 'ii', 'c', 'nones', nil),
      Day.new(249,  9,  6,  nil, 'd', 'ides', 'viii'),
      Day.new(250,  9,  7, 'x', 'e', 'ides', 'vii'),
      Day.new(251,  9,  8,  nil, 'f', 'ides', 'vi'),
      Day.new(252,  9,  9, 'xviii', 'g', 'ides', 'v'),
      Day.new(253,  9, 10, 'vii', 'A', 'ides', 'iv'),
      Day.new(254,  9, 11,  nil, 'b', 'ides', 'iii'),
      Day.new(255,  9, 12, 'xv', 'c', 'ides', 'ii'),
      Day.new(256,  9, 13, 'iiii', 'd', 'ides', nil),
      Day.new(257,  9, 14,  nil, 'e', 'kalends', 'xviii'),
      Day.new(258,  9, 15, 'xii', 'f', 'kalends', 'xvii'),
      Day.new(259,  9, 16, 'i', 'g', 'kalends', 'xvi'),
      Day.new(260,  9, 17,  nil, 'A', 'kalends', 'xv'),
      Day.new(261,  9, 18, 'ix', 'b', 'kalends', 'xiv'),
      Day.new(262,  9, 19,  nil, 'c', 'kalends', 'xiii'),
      Day.new(263,  9, 20, 'xvii', 'd', 'kalends', 'xii'),
      Day.new(264,  9, 21, 'vi', 'e', 'kalends', 'xi'),
      Day.new(265,  9, 22,  nil, 'f', 'kalends', 'x'),
      Day.new(266,  9, 23, 'xiiii', 'g', 'kalends', 'ix'),
      Day.new(267,  9, 24, 'iii', 'A', 'kalends', 'viii'),
      Day.new(268,  9, 25,  nil, 'b', 'kalends', 'vii'),
      Day.new(269,  9, 26, 'xi', 'c', 'kalends', 'vi'),
      Day.new(270,  9, 27, 'xix', 'd', 'kalends', 'v'),
      Day.new(271,  9, 28,  nil, 'e', 'kalends', 'iv'),
      Day.new(272,  9, 29, 'viii', 'f', 'kalends', 'iii'),
      Day.new(273,  9, 30,  nil, 'g', 'kalends', 'ii'),
      Day.new(274, 10,  1, 'xvi', 'A', 'kalends', nil),
      Day.new(275, 10,  2, 'v', 'b', 'nones', 'vi'),
      Day.new(276, 10,  3, 'xiii', 'c', 'nones', 'v'),
      Day.new(277, 10,  4, 'ii', 'd', 'nones', 'iv'),
      Day.new(278, 10,  5,  nil, 'e', 'nones', 'iii'),
      Day.new(279, 10,  6, 'x', 'f', 'nones', 'ii'),
      Day.new(280, 10,  7,  nil, 'g', 'nones', nil),
      Day.new(281, 10,  8, 'xviii', 'A', 'ides', 'viii'),
      Day.new(282, 10,  9, 'vii', 'b', 'ides', 'vii'),
      Day.new(283, 10, 10,  nil, 'c', 'ides', 'vi'),
      Day.new(284, 10, 11, 'xv', 'd', 'ides', 'v'),
      Day.new(285, 10, 12, 'iiii', 'e', 'ides', 'iv'),
      Day.new(286, 10, 13,  nil, 'f', 'ides', 'iii'),
      Day.new(287, 10, 14, 'xii', 'g', 'ides', 'ii'),
      Day.new(288, 10, 15, 'i', 'A', 'ides', nil),
      Day.new(289, 10, 16,  nil, 'b', 'kalends', 'xvii'),
      Day.new(290, 10, 17, 'ix', 'c', 'kalends', 'xvi'),
      Day.new(291, 10, 18,  nil, 'd', 'kalends', 'xv'),
      Day.new(292, 10, 19, 'xvii', 'e', 'kalends', 'xiv'),
      Day.new(293, 10, 20, 'vi', 'f', 'kalends', 'xiii'),
      Day.new(294, 10, 21,  nil, 'g', 'kalends', 'xii'),
      Day.new(295, 10, 22, 'xiiii', 'A', 'kalends', 'xi'),
      Day.new(296, 10, 23, 'iii', 'b', 'kalends', 'x'),
      Day.new(297, 10, 24,  nil, 'c', 'kalends', 'ix'),
      Day.new(298, 10, 25, 'xi', 'd', 'kalends', 'viii'),
      Day.new(299, 10, 26, 'xix', 'e', 'kalends', 'vii'),
      Day.new(300, 10, 27,  nil, 'f', 'kalends', 'vi'),
      Day.new(301, 10, 28, 'viii', 'g', 'kalends', 'v'),
      Day.new(302, 10, 29,  nil, 'A', 'kalends', 'iv'),
      Day.new(303, 10, 30, 'xvi', 'b', 'kalends', 'iii'),
      Day.new(304, 10, 31, 'v', 'c', 'kalends', 'ii'),
      Day.new(305, 11,  1,  nil, 'd', 'kalends', nil),
      Day.new(306, 11,  2, 'xiii', 'e', 'nones', 'iv'),
      Day.new(307, 11,  3, 'ii', 'f', 'nones', 'iii'),
      Day.new(308, 11,  4,  nil, 'g', 'nones', 'ii'),
      Day.new(309, 11,  5, 'x', 'A', 'nones', nil),
      Day.new(310, 11,  6,  nil, 'b', 'ides', 'viii'),
      Day.new(311, 11,  7, 'xviii', 'c', 'ides', 'vii'),
      Day.new(312, 11,  8, 'vii', 'd', 'ides', 'vi'),
      Day.new(313, 11,  9,  nil, 'e', 'ides', 'v'),
      Day.new(314, 11, 10, 'xv', 'f', 'ides', 'iv'),
      Day.new(315, 11, 11, 'iiii', 'g', 'ides', 'iii'),
      Day.new(316, 11, 12,  nil, 'A', 'ides', 'ii'),
      Day.new(317, 11, 13, 'xii', 'b', 'ides', nil),
      Day.new(318, 11, 14, 'i', 'c', 'kalends', 'xviii'),
      Day.new(319, 11, 15,  nil, 'd', 'kalends', 'xvii'),
      Day.new(320, 11, 16, 'ix', 'e', 'kalends', 'xvi'),
      Day.new(321, 11, 17,  nil, 'f', 'kalends', 'xv'),
      Day.new(322, 11, 18, 'xvii', 'g', 'kalends', 'xiv'),
      Day.new(323, 11, 19, 'vi', 'A', 'kalends', 'xiii'),
      Day.new(324, 11, 20,  nil, 'b', 'kalends', 'xii'),
      Day.new(325, 11, 21, 'xiiii', 'c', 'kalends', 'xi'),
      Day.new(326, 11, 22, 'iii', 'd', 'kalends', 'x'),
      Day.new(327, 11, 23,  nil, 'e', 'kalends', 'ix'),
      Day.new(328, 11, 24, 'xi', 'f', 'kalends', 'viii'),
      Day.new(329, 11, 25, 'xix', 'g', 'kalends', 'vii'),
      Day.new(330, 11, 26,  nil, 'A', 'kalends', 'vi'),
      Day.new(331, 11, 27, 'viii', 'b', 'kalends', 'v'),
      Day.new(332, 11, 28,  nil, 'c', 'kalends', 'iv'),
      Day.new(333, 11, 29, 'xvi', 'd', 'kalends', 'iii'),
      Day.new(334, 11, 30, 'v', 'e', 'kalends', 'ii'),
      Day.new(335, 12,  1, 'xiii', 'f', 'kalends', nil),
      Day.new(336, 12,  2, 'ii', 'g', 'nones', 'iv'),
      Day.new(337, 12,  3,  nil, 'A', 'nones', 'iii'),
      Day.new(338, 12,  4, 'x', 'b', 'nones', 'ii'),
      Day.new(339, 12,  5,  nil, 'c', 'nones', nil),
      Day.new(340, 12,  6, 'xviii', 'd', 'ides', 'viii'),
      Day.new(341, 12,  7, 'vii', 'e', 'ides', 'vii'),
      Day.new(342, 12,  8,  nil, 'f', 'ides', 'vi'),
      Day.new(343, 12,  9, 'xv', 'g', 'ides', 'v'),
      Day.new(344, 12, 10, 'iiii', 'A', 'ides', 'iv'),
      Day.new(345, 12, 11,  nil, 'b', 'ides', 'iii'),
      Day.new(346, 12, 12, 'xii', 'c', 'ides', 'ii'),
      Day.new(347, 12, 13, 'i', 'd', 'ides', nil),
      Day.new(348, 12, 14,  nil, 'e', 'kalends', 'xix'),
      Day.new(349, 12, 15, 'ix', 'f', 'kalends', 'xviii'),
      Day.new(350, 12, 16,  nil, 'g', 'kalends', 'xvii'),
      Day.new(351, 12, 17, 'xvii', 'A', 'kalends', 'xvi'),
      Day.new(352, 12, 18, 'vi', 'b', 'kalends', 'xv'),
      Day.new(353, 12, 19,  nil, 'c', 'kalends', 'xiv'),
      Day.new(354, 12, 20, 'xiiii', 'd', 'kalends', 'xiii'),
      Day.new(355, 12, 21, 'iii', 'e', 'kalends', 'xii'),
      Day.new(356, 12, 22,  nil, 'f', 'kalends', 'xi'),
      Day.new(357, 12, 23, 'xi', 'g', 'kalends', 'x'),
      Day.new(358, 12, 24, 'xix', 'A', 'kalends', 'ix'),
      Day.new(359, 12, 25,  nil, 'b', 'kalends', 'viii'),
      Day.new(360, 12, 26, 'viii', 'c', 'kalends', 'vii'),
      Day.new(361, 12, 27,  nil, 'd', 'kalends', 'vi'),
      Day.new(362, 12, 28, 'xvi', 'e', 'kalends', 'v'),
      Day.new(363, 12, 29, 'v', 'f', 'kalends', 'iv'),
      Day.new(364, 12, 30,  nil, 'g', 'kalends', 'iii'),
      Day.new(365, 12, 31, 'xiii', 'A', 'kalends', 'ii'),

    ]

=begin
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

    # DAY_TABLE2.default = {
    #   month_number: 0,
    #   day_number:   0,
    #   golden_number: nil,
    #   dominical_letter: 'q',
    #   kni:            'error',
    #   kni_number:     'xxxvvviii'
    # }

=end

    EGYPTIAN_DAYS = {
      'January'   => [ 1, 25],
      'February'  => [ 4, 26],
      'March'     => [ 1, 28],
      'April'     => [10, 20],
      'May'       => [ 3, 25],
      'June'      => [10, 16],
      'July'      => [13, 22],
      'August'    => [ 1, 30],
      'September' => [ 3, 21],
      'October'   => [ 3, 22],
      'November'  => [ 5, 28],
      'December'  => [ 7, 22]
    }

  end
end