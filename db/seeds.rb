# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies_data = [
    { name: 'Star Wars', image_url: 'https://picsum.photos/200/300', is_showing: true },
    { name: 'Lord of the Rings', image_url: 'https://picsum.photos/200/300', is_showing: true }
  ]
  # Character.create(name: 'Luke', movie: movies.first)

  movies_data.each do |movie|
    Movie.find_or_create_by(movie)
  end

  sheets_data = [
  { column: 1, row: 'a' },
  { column: 2, row: 'a' },
  { column: 3, row: 'a' },
  { column: 4, row: 'a' },
  { column: 5, row: 'a' },
  { column: 1, row: 'b' },
  { column: 2, row: 'b' },
  { column: 3, row: 'b' },
  { column: 4, row: 'b' },
  { column: 5, row: 'b' },
  { column: 1, row: 'c' },
  { column: 2, row: 'c' },
  { column: 3, row: 'c' },
  { column: 4, row: 'c' },
  { column: 5, row: 'c' }
]

sheets_data.each do |sheet|
  Sheet.find_or_create_by(sheet)
end
