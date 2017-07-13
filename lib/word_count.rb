class String
    #Account for case sensitivity!
  define_method(:wordcounter) do |word|
    phrase = self.split()
    counter = 0
    phrase.each do |special_word|
      if special_word == word
       counter += 1
      end
   end
   counter
 end
end
