require "rails_helper"

RSpec.feature 'Testing Shop Engine URL', type: :feature do

  shop_url = Rails.application.config_for(:testing_keys)['shop_url']

  it 'Visit shop home page' do
    response = RequestService.send_request(shop_url)
    expect(response.code).to eq('200')
    expect(response.body).to have_content('DRIZLY’S shoes!')
  end
end
