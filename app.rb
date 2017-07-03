require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/wordcounter') do
  phrase = params.fetch('phrase')
  special_word = params.fetch('special_word')

  @counter=phrase.wordcounter(special_word)
  @special_word= special_word

  erb(:results)
 end
