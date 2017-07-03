require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  phrase = params.fetch('phrase')
  word = params.fetch('word')
  @counter = phrase.wordcounter(word)
  @word = word
  erb(:results)
 end
