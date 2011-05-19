class Duration
  include Mongoid::Document
  include Mongoid::TranslatedStrings

  embedded_in :job_opening, reverse_of: :duration

  # The length of the job in number of days
  field :length, type: Integer 
  
  # The date of the first day of the job.
  field :starts_on, type: DateTime
  
  # The last day of the job
  field :ends_on, type: DateTime
 
  # Is the position a substitute
  field :sub, type: Boolean

  # An additional description of the duration.
  field :text, type: Hash


end
