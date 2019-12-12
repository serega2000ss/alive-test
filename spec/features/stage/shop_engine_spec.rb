require "rails_helper"

RSpec.feature 'Testing Shop Engine URL', type: :feature do

  shop_url = 'https://www.aliveprimo.shoes/shshsh'

  it 'Visit shop home page' do
    response = RequestService.send_request(shop_url)
    expect(response.code).to eq('200')
    expect(response.body).to have_content('DRIZLY’S shoes!')
  end
end
