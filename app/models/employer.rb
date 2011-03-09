class Employer
  include Mongoid::Document
  embedded_in :job_opening, reverse_of: :employer

  field :name

end
