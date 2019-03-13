require_relative '../../helpers/system_events_api_base'

# NOTE :: I mistakenly added this before the real system_event registration service endpoint
#  was even created.  Will probably need to modify this class once that endpoint actually exists.
module SystemEvents
  # REST resources specific to SystemEvent Registrations
  class Registration < SystemEventsApiBase
    self.prefix = '/v1/system_event/'
  end
end
