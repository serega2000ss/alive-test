require "rails_helper"

RSpec.feature 'Testing Primo URL', type: :feature do

  it 'Visit primo home page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('How it works')
  end

  it 'Visit /brand/1898brand page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/brand/1898brand')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('1898 is a Footwear-inspired brand')
  end

  it 'Visit /1898 page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('1898’S shoes!')
  end

  it 'Visit /1898/faq page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898/faq')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('How can I track my order?')
  end

  it 'Visit /1898/terms page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898/terms')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Information about us')
  end

  it 'Visit /1898/claims page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898/claims')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Would you like to...')
  end

  it 'Visit /1898/privacy page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898/privacy')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Privacy Policy of')
  end

  it 'Visit /1898/contact page' do
    response = RequestService.send_request('https://www.aliveprimo.shoes/1898/contact')
    expect(response.code).to eq('200')
    expect(response.body).to have_content('???????')
  end
end
