require 'system_events_client/version.rb'
require 'system_events_client/app/helpers/system_events_api_base.rb'
require 'system_events_client/app/helpers/bearer_auth_connection.rb'
require 'system_events_client/app/helpers/system_events_api_bearer_auth.rb'
Dir["#{File.dirname(__FILE__)}/system_events_client/app/helpers/**/*.rb"].each { |file| require file }
Dir["#{File.dirname(__FILE__)}/system_events_client/app/models/**/*.rb"].each { |file| require file }

# Entry to REST api model definitions
module SystemEventsClient
  # Note: Anyone consuming this should mock the actual REST calls in their tests
  unless ENV['RAILS_ENV'] == 'test'
    if ENV['SYSTEM_EVENTS_API_URL'].blank?
      raise 'Set SYSTEM_EVENTS_API_URL environment variable to utilize this gem'
    end
  end

  STUDENT_EVENT_TYPE            = 'student'.freeze
  PROSPECT_EVENT_TYPE           = 'prospect'.freeze
  PAYMENT_EVENT_TYPE            = 'payment'.freeze
  MEMBERSHIP_EVENT_TYPE         = 'membership'.freeze
  INVOICE_EVENT_TYPE            = 'invoice'.freeze
  EVENT_EVENT_TYPE              = 'event'.freeze
  FAMILY_EVENT_TYPE             = 'family'.freeze
  COMMENT_EVENT_TYPE            = 'comment'.freeze
  TASK_EVENT_TYPE               = 'task'.freeze
  APPOINTMENT_EVENT_TYPE        = 'appointment'.freeze
  BILLING_CONNECTION_EVENT_TYPE = 'billing_connection'.freeze
  ACCOUNT_EVENT_TYPE            = 'account'.freeze

  CREATE_EVENT_ACTION   = 'create'.freeze
  UPDATE_EVENT_ACTION   = 'update'.freeze
  DELETE_EVENT_ACTION   = 'delete'.freeze
end
