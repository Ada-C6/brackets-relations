# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = [
  { name: "Cool Folks", hometown: "Cool, USA" },
  { name: "Jazzy Folks", hometown: "Jazztown, USA" },
  { name: "Cool Group", hometown: "Groups" },
  { name: "Kitty Purry", hometown: "New Orleans" },
  { name: "Ada Jams", hometown: "Seattle" }
]

artists.each do |artist_hash|
    Artist.create(artist_hash)
end

albums = [
  { artist_id: 1, title: "Smooth Jazz", year: 1999 },
  { artist_id: 2, title: "Smooth Rock", year: 2000 },
  { artist_id: 3, title: "Smooth Hits", year: 1984 },
  { artist_id: 4, title: "Smooth Country", year: 1963 },
  { artist_id: 5, title: "Smooth Hip Hop", year: 1977 }
]
albums.each do |album_hash|
  Album.create(album_hash)
end




titles = %w(Jazz Rock Hits Country Hip-Hop).shuffle
puts "HELLO WHAT ARE THESE TITLES #{titles}"
artist_list = Artist.all

artists.length.times do |i|
  artist_id = artist_list[i].id
  album_hash = { artist_id: artist_id, title: "Smooth #{ titles.pop }", year: rand(1900..2016)}
  Album.create(album_hash)
end
