class Salary
  include Mongoid::Document
  include Mongoid::TranslatedStrings
  embedded_in :job_opening, reverse_of: :salary

  field :minimum, type: Float

  field :maximum, type: Float

  field :currency

  field :period
  
  field :accomodation, type: Boolean

  field :meals, type: Boolean

  field :travel_expenses, type: Boolean

  field :reloaction, type: Boolean

  # An additional description of the salary
  field :text, type: Hash

end
