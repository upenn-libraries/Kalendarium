class Name < ApplicationRecord
  has_many :feast_names
  has_many :feasts, through: :feast_names
  has_many :variants, dependent: :destroy

  validates :name, uniqueness: true
  accepts_nested_attributes_for :variants, allow_destroy: true, reject_if: :all_blank

  def to_s
    name
  end



  # serialize :bariants

  # before_save :collect_bariants

  # after_find :populate_bariants

  # 4.times{ |i| attr_accessor :"bariant#{i}"}

  # private
  #   def collect_bariants

  #   end

  #   def populate_bariants

  #   end
end
