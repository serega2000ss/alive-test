require "rails_helper"

brand_url = Rails.application.config_for(:testing_keys)['production_premium_brand_url']

RSpec.feature "Testing Production Premium Store Engine URL: #{brand_url}", type: :feature do

  pending('pending....')

  # it 'Visit brand home page' do
  #   response = RequestService.send_request(brand_url)
  #   expect(response.code).to eq('200')
  #   expect(response.body).to have_content('aoeuoeua')
  # end
  #
  # it 'Check brand /how page - get 404' do
  #   response = RequestService.send_request("#{brand_url}/how")
  #   expect(response.code).to eq('404')
  # end
  #
  # it 'Visit brand /faq page' do
  #   response = RequestService.send_request("#{brand_url}/faq")
  #   expect(response.code).to eq('200')
  #   expect(response.body).to have_content('How can I track my order?')
  # end
  #
  # it 'Visit brand /terms page' do
  #   response = RequestService.send_request("#{brand_url}/terms")
  #   expect(response.code).to eq('200')
  #   expect(response.body).to have_content('Information about us')
  # end
  #
  # it 'Visit brand /claims page' do
  #   response = RequestService.send_request("#{brand_url}/claims")
  #   expect(response.code).to eq('200')
  #   expect(response.body).to have_content('Would you like to...')
  # end
  #
  # it 'Visit brand /privacy page' do
  #   response = RequestService.send_request("#{brand_url}/privacy")
  #   expect(response.code).to eq('200')
  # end
  #
  # it 'Visit brand /privacy page' do
  #   response = RequestService.send_request("#{brand_url}/contact")
  #   expect(response.code).to eq('200')
  # end
  #
  # it 'Visit brand /camden page - get 404' do
  #   response = RequestService.send_request("#{brand_url}/camden")
  #   expect(response.code).to eq('404')
  # end
  #
  # it 'Visit brand /shshsh page - get 301 redirect' do
  #   response = RequestService.send_request("#{brand_url}/shshsh")
  #   expect(response.code).to eq('301')
  # end
end
