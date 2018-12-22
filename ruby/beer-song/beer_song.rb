class BeerSong

  def self.recite bottles, verse

    <<-TEXT.gsub(/^ */, '')
    99 bottles of beer on the wall, 99 bottles of beer.
    Take one down and pass it around, 98 bottles of beer on the wall.
    TEXT

    "99 bottles of beer on the wall, 99 bottles of beer.
    Take one down and pass it around, 98 bottles of beer on the wall.
    "
  end
end
