
class BeerSong

  def self.recite bottles, verse

    song = make_verse bottles

    while (verse > 1) do
      song = song + "\n" + make_verse(bottles - 1)
      bottles = bottles - 1
      verse = verse - 1
    end

    song
  end
end


def phrase(quantity)
  case quantity
  when 0
    'no more bottles'
  when 1
    '1 bottle'
  else
    "#{quantity} bottles"
  end
end

def make_verse bottles
  first_line(bottles) + last_line(bottles)
end

def first_line(bottles)
  "#{phrase(bottles).capitalize} of beer on the wall, #{phrase(bottles)} of beer.\n"
end

def last_line(bottles)
  return "Go to the store and buy some more, 99 bottles of beer on the wall.\n" if bottles.zero?

  "Take #{bottles > 1 ? 'one' : 'it'} down and pass it around, #{phrase(bottles - 1)} of beer on the wall.\n"
end