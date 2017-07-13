require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
   word = params.fetch('word')
  @phrase_word = params.fetch('word')
  @counter = params.fetch('phrase').wordcounter(@phrase_word)
  erb(:results)
 end
