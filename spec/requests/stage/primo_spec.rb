require "rails_helper"

primo_url = Rails.application.config_for(:testing_keys)['primo_url']

RSpec.feature "Testing Primo URL: #{primo_url}", type: :feature do

  it 'Visit primo home page' do
    response = RequestService.send_request(primo_url)
    expect(response.code).to eq('200')
    expect(response.body).to have_content('your line')
  end

  it 'Visit primo /how page' do
    response = RequestService.send_request("#{primo_url}/how")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Apply to AliveShoes')
  end

  it 'Visit primo /pr-boost page' do
    response = RequestService.send_request("#{primo_url}/pr-boost")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('REACH 10 SALES WITH YOUR CUSTOMS SHOES AND UNLOCK')
  end

  it 'Visit primo /brand-boost page' do
    response = RequestService.send_request("#{primo_url}/brand-boost")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('REACH 50 TOTAL SALES WITH YOUR LINE AND UNLOCK')
  end

  it 'Visit primo /gallery page' do
    response = RequestService.send_request("#{primo_url}/gallery")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('REACH SEVEN PRE-ORDER SALES TO MAKE YOUR DESIGN REAL')
  end

  it 'Visit primo /italiancrafting page' do
    response = RequestService.send_request("#{primo_url}/italiancrafting")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('- Since 1901 -')
  end

  it 'Visit primo /testimonials page' do
    response = RequestService.send_request("#{primo_url}/testimonials")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('The voice of the community')
  end

  it 'Visit primo /about page' do
    response = RequestService.send_request("#{primo_url}/about")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Every artist and creative being needs')
  end

  it 'Visit primo /news page' do
    response = RequestService.send_request("#{primo_url}/news")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('QUITO CARIB SHOES FEATURED ON VOGUE')
  end

  it 'Visit primo /careers page' do
    response = RequestService.send_request("#{primo_url}/careers")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('You can work for an established company and feel safe')
  end

  it 'Visit primo /about/terms page' do
    response = RequestService.send_request("#{primo_url}/about/terms")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Information about us')
  end

  it 'Visit primo /about/faq page' do
    response = RequestService.send_request("#{primo_url}/about/faq")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('What is AliveShoes?')
  end
end


RSpec.feature "Testing Primo brand URL: #{primo_url}", type: :feature do

  it 'Visit /brand/1898brand page' do
    response = RequestService.send_request("#{primo_url}/brand/1898brand")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('1898 is a Footwear-inspired brand')
  end

  it 'Visit /1898 page' do
    response = RequestService.send_request("#{primo_url}/1898")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('1898’S shoes!')
  end

  it 'Visit /1898/faq page' do
    response = RequestService.send_request("#{primo_url}/1898/faq")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('How can I track my order?')
  end

  it 'Visit /1898/terms page' do
    response = RequestService.send_request("#{primo_url}/1898/terms")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Information about us')
  end

  it 'Visit /1898/claims page' do
    response = RequestService.send_request("#{primo_url}/1898/claims")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('Would you like to...')
  end

  it 'Visit /1898/privacy page' do
    response = RequestService.send_request("#{primo_url}/1898/privacy")
    expect(response.code).to eq('200')
    # the content is loaded in by ajax, can't really check it
  end

  it 'Visit /1898/contact page' do
    response = RequestService.send_request("#{primo_url}/1898/contact")
    expect(response.code).to eq('200')
    expect(response.body).to have_content('If you have any question or complain')
  end
end
