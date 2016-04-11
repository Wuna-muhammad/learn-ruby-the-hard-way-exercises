#coding -*- utf-8 -*-

# Exercise No. 40 from Learn Ruby The Hard Way
# Done by Bernard Pietraga

class Song

  attr_reader :lyrics, :band

  def initialize(lyrics, band)
    @lyrics = lyrics
    @band = band
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end

  def band_name()
    puts "The band of this amazing tune is #{@band}"
  end

  def print_array()
    puts @lyrics
  end

end

happy_bday = Song.new(["Happy birthday to you",
            "I don't want to get sued",
            "So I'll stop right there"], "Someone")

bulls_on_parade = Song.new(["They rally around the family",
                "With pockets full of shells"], "RATM")

ona_tanczy_dla_mnie = Song.new(["Ja uwielbiam ją. Ona tu jest",
                    "i tańczy dla mnie,",
                    "bo dobrze to wie, że porwę ją",
                    "i w sercu schowam na dnie. "], "Weekend")

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

puts '_' * 10
ona_tanczy_dla_mnie.sing_me_a_song()
ona_tanczy_dla_mnie.band_name()

# Study drill part 2.
puts '_' * 10

kabab_w_cienkim_ciescie = Song.new(["Wyszedłem dzisiaj z roboty",
            "gdyż nie miałem nie miałem co robić",
            "w robocie",
            "hej yeah!"], "Zacier")

kabab_w_cienkim_ciescie.sing_me_a_song()
kabab_w_cienkim_ciescie.band_name()
