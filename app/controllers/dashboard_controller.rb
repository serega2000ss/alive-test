class DashboardController < ApplicationController
  layout false, :except => :index
  skip_before_filter :verify_authenticity_token, :only => [:post_cors]
  before_filter :set_cors_headers, :except => :index

  def index
  end

  def get_cors
  end

  def post_cors
    @params = post_params
  end


  private

  def post_params
    params.require(:customer).permit(:id, :first_name, :last_name)
  end

  def set_cors_headers
    response.headers['Access-Control-Allow-Origin'] = 'http://test-shop.com:3000'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, OPTIONS'
    response.headers['Access-Control-Allow-Credentials'] = true
    response.headers['Content-Type'] = 'text/html; charset=utf-8'
  end
end
