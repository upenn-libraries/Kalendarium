# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'csv'

CSV.foreach File.expand_path('../name_variation_seeds.csv', __FILE__) do |row|
  name = row.shift
  name_object = Name.find_or_create_by name: name
  Variant.find_or_create_by name: name_object, variant: row.first, language: row.last do |var|
  end
end


CSV.foreach File.expand_path('../name_date_seeds.csv', __FILE__) do |row|
  name = row.shift
  name_object = Name.find_or_create_by name: name
  dates = row.first
  dates.split(?;).each do |d|
    month, day = d.split(?|).map(&:to_i)
    NameDate.find_or_create_by name: name_object, month: month, day: day
  end
end


