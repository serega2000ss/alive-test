require 'rails_helper'

describe 'Test if Selenium is working', type: :feature, js: true do

  it 'Visit Wikipedia main page' do
    visit 'https://en.wikipedia.org/wiki/Main_Page'
    Capybara::Screenshot.screenshot_and_save_page
    expect(page).to have_content('Welcome to Wikipedia')
  end
end
