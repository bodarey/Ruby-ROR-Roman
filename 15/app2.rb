# frozen_string_literal: true
require_relative 'app1'

artist = Artist.new 'new artist'
album = Album.new 'my album'
artist.add_album album

s1 = Song.new 'song1'
s2 = Song.new 'song2'

album.add_song s1
album.add_song s2
puts album.songs
