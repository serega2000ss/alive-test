class RequestService

  def self.testing_keys
    @testing_keys ||= Rails.application.config_for(:testing_keys)
  end


  def self.send_request(request_url, method = :get, basic_auth = true)
    uri = URI.parse(request_url)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true if uri.scheme == 'https'
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE if skip_verification
    if method == :get
      request = Net::HTTP::Get.new(uri.request_uri)
    elsif method == :post
      request = Net::HTTP::Post.new(uri.request_uri)
    end
    request.basic_auth(testing_keys['basic_auth_user_name'], testing_keys['basic_auth_password']) if basic_auth
    http.request(request)
  end
end
