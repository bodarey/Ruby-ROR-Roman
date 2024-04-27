# frozen_string_literal: true

class Artist
  attr_reader :albums

  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album(album)
    @albums << album
  end
end

class Album < Artist
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
end

class Song
  def initialize(name)
    @name = name
  end

  def to_s
    @name
  end
end
