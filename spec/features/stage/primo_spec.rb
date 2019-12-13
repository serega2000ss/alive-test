require "rails_helper"

primo_url = Rails.application.config_for(:testing_keys)['primo_url']

RSpec.feature 'Testing Primo Homepage', type: :feature, js: true do
  pending('pending....')

  # it 'Visit primo home page' do
  #
  #   # page.visit("http://#{username}:#{password}@#{page.driver.rack_server.host}:#{page.driver.rack_server.port}/")
  #
  #
  #   # page.driver.header 'Authorization', "Basic #{encoded_login}"
  #
  #   # page.driver.header 'Referer', 'https://www.thoughtbot.com'
  #
  #
  #   # visit primo_url
  #   #
  #   # # page.visit("http://#{username}:#{password}@#{page.driver.rack_server.host}:#{page.driver.rack_server.port}/")
  #
  #   # primo_url: 'https://www.aliveprimo.shoes'
  #
  #
  #   Capybara::Screenshot.screenshot_and_save_page
  #
  #   # expect(page).to have_content('Welcome to Wikipedia')
  #   # response = RequestService.send_request(primo_url)
  #   # expect(response.code).to eq('200')
  #   # expect(response.body).to have_content('your line')
  #
  #   expect(true)
  # end
end
