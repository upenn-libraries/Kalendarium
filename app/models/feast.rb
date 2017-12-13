class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  has_many :feast_names
  has_many :names, through: :feast_names
  accepts_nested_attributes_for :feast_names, reject_if: :all_blank

  # SAINT_NAMES = %w(
  #   Matthew
  #   Mark
  #   Luke
  #   John
  #   Paul
  #   George
  #   Ringo
  #   Yoda
  #   Obi-Wan
  # )


  MODIFIERS = %w(
    octave

    vigil

    ordination
    invention
    deposition
    elevation
    translation

    death
  )
  # "invention of the body", "reception of his[JtB] appearance", "conversacio Pauli", "Purificatio S. Mariae"


  def to_s
    s = 'festivitas'
  # s = "Feast of St. #{saint_name} "
  # s << "of #{saint_location} "                                           unless saint_location.blank?
  # s << "(#{saint_attributes.keys.map{ |a| FULL_ST_ATTR[a] }.join('/')})" unless saint_attributes.blank?
    s << (': "' + transcription + '"')                                     unless transcription.blank?
    limit = 50
    elip = s.length > limit ? '...' : ''
    "#{s[0...limit]}#{elip}"
  end

end


