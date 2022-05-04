require 'activeresource'
require 'activeresource-response'

# Our base that primarily just defines the system_events_api base url
class SystemEventsApiBase < ActiveResource::Base
  self.site = "#{ENV.fetch('SYSTEM_EVENTS_API_URL', nil)}/v1"
end
