class BearerAuthConnection < ActiveResource::Connection
  attr_accessor :bearer_token

  private

  def authorization_header(http_method, uri)
    if self.bearer_token && auth_type == :bearer
      { 'Authorization' => "Bearer #{self.bearer_token}" }
    else
      {}
    end
  end

  def legitimize_auth_type(auth_type)
    auth_type.nil? ? :basic : :bearer
  end
end
