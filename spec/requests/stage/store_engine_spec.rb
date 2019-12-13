require "rails_helper"

barand_url = Rails.application.config_for(:testing_keys)['barand_url']

RSpec.feature "Testing Store Engine URL: #{barand_url}", type: :feature do

  it 'Visit brand home page' do
    response = RequestService.send_request(barand_url)
    expect(response.code).to eq('200')
    expect(response.body).to have_content('aoeuoeua')
  end

  it 'Check brand /how page - get 404' do
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

  it 'Visit brand /camden page - get 404' do
    response = RequestService.send_request("#{barand_url}/camden")
    expect(response.code).to eq('404')
  end

  it 'Visit brand /camden page - get 301 redirect' do
    response = RequestService.send_request("#{barand_url}/shshsh")
    expect(response.code).to eq('301')
  end
end
