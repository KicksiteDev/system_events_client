require 'activeresource'

# Override of ActiveResource Connection class to provider bearer authentication
class BearerAuthConnection < ActiveResource::Connection
  attr_accessor :bearer_token

  private

  def authorization_header(_http_method, _uri)
    if bearer_token && auth_type == :bearer
      { 'Authorization' => "Bearer #{bearer_token}" }
    else
      {}
    end
  end

  def legitimize_auth_type(auth_type)
    auth_type.nil? ? :basic : :bearer
  end
end
