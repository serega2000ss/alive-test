require "rails_helper"

RSpec.feature 'Testing Store Engine URL', type: :feature do

  barand_url = 'https://test99.alivesecondo.shoes'

  it 'Visit brand home page' do
    response = RequestService.send_request(barand_url)
    expect(response.code).to eq('200')
    expect(response.body).to have_content('aoeuoeua')
  end

  it 'Check brand 404 on "/how" path' do
    response = RequestService.send_request("#{barand_url}/how")
    expect(response.code).to eq('404')
  end

  it 'Visit brand /faq page' do
    response = RequestService.send_request("#{barand_url}/faq")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('How can I track my order?')
  end

  it 'Visit brand /terms page' do
    response = RequestService.send_request("#{barand_url}/terms")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Information about us')
  end

  it 'Visit brand /claims page' do
    response = RequestService.send_request("#{barand_url}/claims")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Would you like to...')
  end

  it 'Visit brand /privacy page' do
    response = RequestService.send_request("#{barand_url}/privacy")
    expect(response.code).to eq('200')
  end

  it 'Visit brand /privacy page' do
    response = RequestService.send_request("#{barand_url}/contact")
    expect(response.code).to eq('200')
  end
end
