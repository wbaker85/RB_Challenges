class BeerSong
  SPECIAL_PHRASES = {
    "1 bottles of beer on the wall, 1 bottles of beer." => 
      "1 bottle of beer on the wall, 1 bottle of beer.",
    "Take one down and pass it around, 1 bottles of beer on the wall." =>
      "Take one down and pass it around, 1 bottle of beer on the wall.",
    "Take one down and pass it around, 0 bottles of beer on the wall." =>
      "Take it down and pass it around, no more bottles of beer on the wall.",
    "0 bottles of beer on the wall, 0 bottles of beer." =>
      "No more bottles of beer on the wall, no more bottles of beer.",
    "Take one down and pass it around, -1 bottles of beer on the wall." =>
      "Go to the store and buy some more, 99 bottles of beer on the wall."
  }

  def verse(num)
    next_num = num - 1
    output = [
      "#{num} bottles of beer on the wall, #{num} bottles of beer.",
      "Take one down and pass it around, #{next_num} bottles of beer on the wall."
    ].join("\n") + "\n"

    SPECIAL_PHRASES.keys.each do |phrase|
      output.gsub!(phrase, SPECIAL_PHRASES[phrase])
    end

    output
  end

  def verses(start_verse, go_until)
    (go_until..start_verse).to_a.reverse.map { |n| verse(n) }.join("\n")
  end

  def lyrics
    verses(99, 0)
  end

end
