require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('rspec')
require('word_count')

describe('String#word_count') do
  it "returns 0 for sentences without any specific word to search for" do
    expect("my name is kelvin".count("")).to(eq(0))
  end

  it "takes a sentence and splits it into an array" do
    expect("my name is kelvin".split).to(eq(["my", "name", "is", "kelvin"]))
  end
end
