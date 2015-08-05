require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('score', :with => 'word')
    click_button('Perform Calculation')
    expect(page).to have_content('8')
  end
end
