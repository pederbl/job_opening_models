class Worktime 
  include Mongoid::Document
  include Mongoid::TranslatedStrings
  embedded_in :job_opening, reverse_of: :worktime

  field :type

  field :hours_per_week, type: Float

  # An additional description of the worktime.
  field :text, type: Hash

end
