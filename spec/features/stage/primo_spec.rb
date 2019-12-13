require "rails_helper"

primo_url = Rails.application.config_for(:testing_keys)['primo_url']

RSpec.feature 'Testing Primo Homepage', type: :feature, js: true do

  it 'Visit primo home page' do

    encoded_login = ["ALIVESHOES:VITTORIA"].pack("m*")
    page.driver.header 'Authorization', "Basic #{encoded_login}"

    # page.driver.header 'Referer', 'https://www.thoughtbot.com'

    # page.driver.get 'https://ALIVESHOES:VITTORIA@www.aliveprimo.shoes'

    # page.driver.browser.basic_authorize('ALIVESHOES', 'VITTORIA')
    visit primo_url
    #
    # # page.visit("http://#{username}:#{password}@#{page.driver.rack_server.host}:#{page.driver.rack_server.port}/")
    # visit("https://ALIVESHOES:VITTORIA@www.aliveprimo.shoes")

    # basic_auth_user_name: 'ALIVESHOES'
    # basic_auth_password: 'VITTORIA'
    # primo_url: 'https://www.aliveprimo.shoes'


    Capybara::Screenshot.screenshot_and_save_page

    # expect(page).to have_content('Welcome to Wikipedia')
    # response = RequestService.send_request(primo_url)
    # expect(response.code).to eq('200')
    # expect(response.body).to have_content('your line')

    expect(true)
  end


end
