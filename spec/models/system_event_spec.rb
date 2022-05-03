require 'httparty'

RSpec.describe SystemEvent do
  before(:each) do
    options = {
      body: {
        login: ENV.fetch('KICKSITE_ADMIN_USERNAME', nil),
        password: ENV.fetch('KICKSITE_ADMIN_PASSWORD', nil),
        context: {
          type: 'School',
          id: 119
        }
      }
    }

    new_user_session_url = "#{ENV.fetch('KICKSITE_AUTH_URL', nil)}/v1/users/new/sessions"
    token = HTTParty.post(new_user_session_url, options)['token']
    SystemEventsApiBearerAuth.connection.bearer_token = token
  end

  it 'successfully returns all system events' do
    system_events = SystemEvent.all
    expect(system_events).to_not be_empty
  end

  it 'successfully returns a system event' do
    first_system_event_id = SystemEvent.first.id

    system_event = SystemEvent.find(first_system_event_id)
    expect(system_event.id).to eq first_system_event_id
  end

  it 'successfully creates a new system event' do
    payload = {
      context: {
        type: 'some_context_type',
        id: 999
      },
      type: SystemEventsClient::STUDENT_EVENT_TYPE,
      action: SystemEventsClient::CREATE_EVENT_ACTION,
      metadata: {
        message: 'hello world from system_event_spec.rb'
      }
    }

    new_system_event = SystemEvent.new(payload)
    new_system_event.save

    expect(new_system_event.id).to eq(SystemEvent.find(new_system_event.id).id)
  end
end
