class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  has_many :feast_names, dependent: :destroy
  has_many :names, through: :feast_names
  accepts_nested_attributes_for :feast_names, allow_destroy: true, reject_if: :all_blank

 # before_save :handle_other_name # being handled in FeastName instead

 MODIFIERS = %w(vigil octave second)

  #  MODIFIERS = %w(
  #   octave

  #   vigil

  #   ordination
  #   invention
  #   deposition
  #   elevation
  #   translation
  # )


  MAX_LENGTH = 47

  def to_s
    s = ''
    s << feast_names.join(', ')        unless  feast_names.blank?
    s << " [#{modifier}]"              unless modifier.blank?
    s << (': "' + transcription + '"') unless transcription.blank?
  # s << transcription unless transcription.blank?
    elip = s.length > MAX_LENGTH ? '...' : ''
    "#{s[0...MAX_LENGTH]}#{elip}"
  end


  private
    def handle_other_name
      feast_names.each do |fn|
        if fn.other_name.present?
          new_name = Name.new(name: fn.other_name)
          new_name.save
          fn.name = new_name
        end
      end
      true
    end

end


