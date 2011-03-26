class Application 
  include Mongoid::Document
  include Mongoid::TranslatedStrings

  embedded_in :job_opening, reverse_of: :application

  # The person to which the application should be sent.
  field :contact

  # The email address to which the application should be sent.
  field :email

  # The mail address to which the application should be sent.
  field :mail
  
  # The phone number to call to apply for the job.
  field :phone
  
  # The url of the web page with the application form.
  field :url
  
  # The reference number that should be specified on the application.
  field :reference
  
  # The application deadline.
  field :deadline
  
  # An additional description of the application procedure.
  field :text, type: Hash

end
