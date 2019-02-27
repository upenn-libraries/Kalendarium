# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sample CSV:
#
# Jesus,Jésus,French
# Stephen

require 'csv'
CSV.foreach File.expand_path('../name_seeds.csv', __FILE__) do |row|
  name = row.shift
  name_object = Name.find_or_create_by name: name
  if row.size == 2
    Variant.find_or_create_by variant: row.first do |var|
      var.language = row.last
      var.name     = name_object
    end
  end
end

