require 'system_events_client/version'
require 'system_events_client/app/helpers/system_events_api_base'
require 'system_events_client/app/helpers/bearer_auth_connection'
require 'system_events_client/app/helpers/system_events_api_bearer_auth'
Dir["#{File.dirname(__FILE__)}/system_events_client/app/helpers/**/*.rb"].sort.each { |file| require file }
Dir["#{File.dirname(__FILE__)}/system_events_client/app/models/**/*.rb"].sort.each { |file| require file }

# Entry to REST api model definitions
module SystemEventsClient
  # NOTE: Anyone consuming this should mock the actual REST calls in their tests
  if ENV['SYSTEM_EVENTS_API_URL'].blank? && ENV['RAILS_ENV'] != 'test'
    raise 'Set SYSTEM_EVENTS_API_URL environment variable to utilize this gem'
  end

  STUDENT_EVENT_TYPE                        = 'student'.freeze
  PROSPECT_EVENT_TYPE                       = 'prospect'.freeze
  PAYMENT_EVENT_TYPE                        = 'payment'.freeze
  MEMBERSHIP_EVENT_TYPE                     = 'membership'.freeze
  INVOICE_EVENT_TYPE                        = 'invoice'.freeze
  EVENT_EVENT_TYPE                          = 'event'.freeze
  FAMILY_EVENT_TYPE                         = 'family'.freeze
  COMMENT_EVENT_TYPE                        = 'comment'.freeze
  TASK_EVENT_TYPE                           = 'task'.freeze
  APPOINTMENT_EVENT_TYPE                    = 'appointment'.freeze
  BILLING_CONNECTION_EVENT_TYPE             = 'billing_connection'.freeze
  LEAD_CAPTURE_FORM_EVENT_TYPE              = 'lead_capture_form'.freeze
  LEAD_CAPTURE_FORM_SUBMISSION_EVENT_TYPE   = 'lead_capture_form_submission'.freeze
  USER_SESSION_EVENT_TYPE                   = 'user_session'.freeze
  ACCOUNT_EVENT_TYPE                        = 'account'.freeze
  ATTENDANCE_EVENT_TYPE                     = 'attendance'.freeze
  LANDING_PAGE_EVENT_TYPE                   = 'landing_page'.freeze
  LANDING_PAGE_SUBMISSION_EVENT_TYPE        = 'landing_page_submission'.freeze
  PROGRAM_EVENT_TYPE                        = 'program'.freeze
  SUBSCRIPTION_EVENT_TYPE                   = 'subscription'.freeze
  DOCUMENT_EVENT_TYPE                       = 'document'.freeze
  AGREEMENT_EVENT_TYPE                      = 'agreement'.freeze
  PROMOTION_EVENT_TYPE                      = 'promotion'.freeze
  CLASS_EVENT_EVENT_TYPE                    = 'class_event'.freeze
  RECURRING_CLASS_EVENT_TYPE                = 'recurring_class'.freeze

  CREATE_EVENT_ACTION   = 'create'.freeze
  UPDATE_EVENT_ACTION   = 'update'.freeze
  DELETE_EVENT_ACTION   = 'delete'.freeze
end
