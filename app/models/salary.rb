class Salary
  include Mongoid::Document
  embedded_in :job_opening, reverse_of: :salary

  field :minimum, type: Float

  field :maximum, type: Float

  field :currency

  field :period
  
  field :accommodation, type: Boolean

  field :meals, type: Boolean

  field :travel_expenses, type: Boolean

  field :relocation, type: Boolean

  field :normalized, type: Float

  # An additional description of the salary
  field :text, type: Hash

end
