require "rails_helper"

RSpec.feature 'Testing Store Engine URL', type: :feature do

  it 'Visit brand home page' do
    response = RequestService.send_request('https://test99.alivesecondo.shoes')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('How it works')
  end

end
