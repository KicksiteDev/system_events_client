RSpec.describe SystemEvents::Registration do
  # Commenting this out for now because we should probably discuss
  #  whether or not we actually want this test.  We probably don't want the
  #  execution of this gem's test suite to actually be generating records
  #  within the system_events svc DB.

  # Also, I mistakenly provided an implementation for SystemEvent::Registration
  #  before the real service endpoint was even developed.  So once that serivce endpoint
  #  actually exists, then we may need to tweak the SystemEvent::Registration model to
  #  work with the finished service endpoint.

  # it 'successfully creates a system event registration' do
  #   payload = {
  #     # The POST /v1/system_event/registrations endpoint expects the callback attribute value to be unique
  #     callback: "http://www.my-callback-#{DateTime.now.strftime('%Q')}.com",
  #     context: {
  #       type: 'some_context_type',
  #       id: 999
  #     },
  #     type: 'this_type_is_from_an_rspec_test',
  #     action: 'this_action_is_from_an_rspec_test'
  #   }
  #
  #   registration = SystemEvents::Registration.new(payload)
  #   expect(registration.save).to be(true)
  # end
end
