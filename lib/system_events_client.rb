Dir["#{File.dirname(__FILE__)}/system_events_client/**/*.rb"].each { |file| require file }

# Entry to REST api model definitions
module SystemEventsClient
  raise 'Set SYSTEM_EVENTS_API_URL environment variable to utilize this gem' if ENV['SYSTEM_EVENTS_API_URL'].blank?

  STUDENT_EVENT_TYPE     = 'student'.freeze
  PROSPECT_EVENT_TYPE    = 'prospect'.freeze
  PAYMENT_EVENT_TYPE     = 'payment'.freeze
  MEMBERSHIP_EVENT_TYPE  = 'membership'.freeze
  INVOICE_EVENT_TYPE     = 'invoice'.freeze
  EVENT_EVENT_TYPE       = 'event'.freeze
  FAMILY_EVENT_TYPE      = 'family'.freeze
  COMMENT_EVENT_TYPE     = 'comment'.freeze
  TASK_EVENT_TYPE        = 'task'.freeze
  APPOINTMENT_EVENT_TYPE = 'appointment'.freeze
  TRIAL_MEMBERSHIP_EVENT_TYPE = 'appointment'.freeze

  CREATE_EVENT_ACTION   = 'create'.freeze
  UPDATE_EVENT_ACTION   = 'update'.freeze
  DELETE_EVENT_ACTION   = 'delete'.freeze
end
