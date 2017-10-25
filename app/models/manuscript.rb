class Manuscript < ApplicationRecord
  validates_presence_of :name

  NUMBERING_METHODS = %w(foliated paginated)

  LANGUAGES = %w(English French Italian Spanish German Latin Klingon)

  def to_s
    name
  end
end
