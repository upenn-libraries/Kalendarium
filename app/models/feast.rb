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
    v.
    vid.
  )# missing( subdiac. non. solit. reclus. proph. ap. )


  # temporary
  FULL_ST_ATTR = {
    st_attr_pp:      'pope',
    st_attr_card:    'cardinal',
    st_attr_aep:     'archbishop',
    st_attr_ep:      'bishop',

    st_attr_pb:      'presbyter',
    st_attr_diac:    'deacon',
    st_attr_subdiac: 'subdeacon',

    st_attr_abb:     'abbot',
    st_attr_mon:     'monk',
    st_attr_non:     'nun',
    st_attr_solit:   'soliary',
    st_attr_erem:    'hermit',
    st_attr_reclus:  'recluse',

    st_attr_proph:   'prophet',
    st_attr_ap:      'apostle',

    st_attr_m:       'martyr',
    st_attr_protom:  'protomartyr',
    st_attr_cf:      'confessor',

    st_attr_v:       'virgin',
    st_attr_vid:     'widow'
  }

  def to_s
    s = "Feast of St. #{saint_name} "
    # s << "(btw he's a cardinal) " if st_attr_card == '1'
    s << "(#{saint_attributes.keys.map{ |a| FULL_ST_ATTR[a] }.join('/')})" unless saint_attributes.blank?
    return s if transcription.blank?

    s << ': '
    limit = 40
    elip = transcription.to_s.length > limit ? '...' : ''
    s << "\"#{transcription[0...limit]}#{elip}\""
  end

  private
    def populate_saint_attributes
      self.st_attr_abb    = '1' if saint_attributes[:st_attr_abb]    == '1'
      self.st_attr_aep    = '1' if saint_attributes[:st_attr_aep]    == '1'
      self.st_attr_card   = '1' if saint_attributes[:st_attr_card]   == '1'
      self.st_attr_cf     = '1' if saint_attributes[:st_attr_cf]     == '1'
      self.st_attr_diac   = '1' if saint_attributes[:st_attr_diac]   == '1'
      self.st_attr_ep     = '1' if saint_attributes[:st_attr_ep]     == '1'
      self.st_attr_erem   = '1' if saint_attributes[:st_attr_erem]   == '1'
      self.st_attr_m      = '1' if saint_attributes[:st_attr_m]      == '1'
      self.st_attr_mon    = '1' if saint_attributes[:st_attr_mon]    == '1'
      self.st_attr_pb     = '1' if saint_attributes[:st_attr_pb]     == '1'
      self.st_attr_pp     = '1' if saint_attributes[:st_attr_pp]     == '1'
      self.st_attr_protom = '1' if saint_attributes[:st_attr_protom] == '1'
      self.st_attr_v      = '1' if saint_attributes[:st_attr_v]      == '1'
      self.st_attr_vid    = '1' if saint_attributes[:st_attr_vid]    == '1'
    end

    def consolidate_saint_attributes
      self.saint_attributes = {}
      self.saint_attributes[:st_attr_abb]    = '1' if st_attr_abb    == '1'
      self.saint_attributes[:st_attr_aep]    = '1' if st_attr_aep    == '1'
      self.saint_attributes[:st_attr_card]   = '1' if st_attr_card   == '1'
      self.saint_attributes[:st_attr_cf]     = '1' if st_attr_cf     == '1'
      self.saint_attributes[:st_attr_diac]   = '1' if st_attr_diac   == '1'
      self.saint_attributes[:st_attr_ep]     = '1' if st_attr_ep     == '1'
      self.saint_attributes[:st_attr_erem]   = '1' if st_attr_erem   == '1'
      self.saint_attributes[:st_attr_m]      = '1' if st_attr_m      == '1'
      self.saint_attributes[:st_attr_mon]    = '1' if st_attr_mon    == '1'
      self.saint_attributes[:st_attr_pb]     = '1' if st_attr_pb     == '1'
      self.saint_attributes[:st_attr_pp]     = '1' if st_attr_pp     == '1'
      self.saint_attributes[:st_attr_protom] = '1' if st_attr_protom == '1'
      self.saint_attributes[:st_attr_v]      = '1' if st_attr_v      == '1'
      self.saint_attributes[:st_attr_vid]    = '1' if st_attr_vid    == '1'
    end
end


