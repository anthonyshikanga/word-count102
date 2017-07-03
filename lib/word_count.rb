class String
    #Account for case sensitivity!
  define_method(:wordcounter) do |word|

    phrase = self.split()
    counter = 0
    phrase.each do |phrase|
      if phrase == word
       counter = counter + 1
      end
   end
   counter
 end
end
