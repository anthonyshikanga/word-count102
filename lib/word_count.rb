class String
    #Account for case sensitivity!
  define_method(:wordcounter) do |special_word|
    counter=0
    phrase_array=self.split()
    phrase_array.each do |word|
      if ((word.eql(special_word)))
       counter +=1
      end
   end
   counter
 end
end
