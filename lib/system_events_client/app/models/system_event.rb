# REST resources specific to SystemEvents
class SystemEvent < SystemEventsApiBearerAuth
  self.collection_parser = PaginatedCollection
end
