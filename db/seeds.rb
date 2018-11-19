# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# name_list = %w(
#   Andrew
#   Agatha
#   James
#   Guinefort
# )

# names = name_list.map{ |n| {name: n} }

# Name.create(names)



require 'csv'
csv = File.read(Rails.root.join('db', 'name_seeds.csv'))
names = CSV.parse(csv).map(&:first).map{ |n| {name: n} }


data = CSV.parse(csv)

names_with_vars = data.map do |d|
  variants = Variant.create(d[1..-1].map{ |v| {variant: v} })
  {name: d.first, variants: variants}
end

Name.create(names_with_vars)



# names_with_vars = CSV.parse(csv).map{ |nwv| {name: nwv.first, variants: nwv[1..-1]} }


Name.create(names)

Name.find_or_create_by(name: name) do |n|
  n.variants = ''
end