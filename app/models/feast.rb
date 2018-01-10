class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  has_many :feast_names, dependent: :destroy
  has_many :names, through: :feast_names
  accepts_nested_attributes_for :feast_names, reject_if: :all_blank

 # before_save :handle_other_name


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
    s = 'fest.'

    feast_names.each do |fn|
      n = fn.name.to_s
      a = ''
      fn.saint_attributes.each{ |s_a| a << "#{FeastName::ABBREVIATE[s_a]}. " }
      com = fn.saint_attributes.blank? ? "#{n}" : "#{n}(#{a.chop})"
      s << " #{com},"
    end

    s.chop! unless feast_names.blank?

    s << " [#{modifier}]"              unless modifier.blank?
    s << (': "' + transcription + '"') unless transcription.blank?
    limit = 60
    elip = s.length > limit ? '...' : ''
    "#{s[0...limit]}#{elip}"
  end


  private
    def handle_other_name
      feast_names.each do |fn|
        o_n = fn.other_name
        unless o_n.blank?
          new_name = Name.new(name: o_n)
          new_name.save
          fn.name = new_name
       # else
         # true
        end
      end
    end

end


