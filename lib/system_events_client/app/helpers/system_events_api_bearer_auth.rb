require_relative 'system_events_api_base'

# Our base that requires basic authentication
class SystemEventsApiBearerAuth < SystemEventsApiBase
  connection.auth_type = :bearer

  self.collection_name = ''
  self.element_name = ''
end
