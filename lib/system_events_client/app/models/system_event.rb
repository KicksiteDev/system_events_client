require_relative '../helpers/system_events_api_bearer_auth'
require_relative '../helpers/paginated_collection'

# REST resources specific to SystemEvents
class SystemEvent < SystemEventsApiBearerAuth
  self.collection_parser = PaginatedCollection
end
