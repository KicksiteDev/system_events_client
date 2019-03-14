require_relative 'system_events_api_base'
require_relative 'bearer_auth_connection'

# Our base that requires basic authentication
class SystemEventsApiBearerAuth < SystemEventsApiBase
  self.auth_type = :bearer
  self.collection_name = ''
  self.element_name = ''

  class << self
    def connection(refresh = false)
      if _connection_defined? || superclass == SystemEventsApiBase
        self._connection = BearerAuthConnection.new(site, format) if refresh || _connection.nil?
        _connection.proxy = proxy if proxy
        _connection.user = user if user
        _connection.password = password if password
        _connection.auth_type = auth_type if auth_type
        _connection.timeout = timeout if timeout
        _connection.open_timeout = open_timeout if open_timeout
        _connection.read_timeout = read_timeout if read_timeout
        _connection.ssl_options = ssl_options if ssl_options
        _connection
      else
        superclass.connection
      end
    end
  end
end
