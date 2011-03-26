class Contact 
  include Mongoid::Document
  embedded_in :job_opening, reverse_of: :contact

  field :name
  field :title
  field :email
  field :phone
  field :other
    
  # The formatted field can be populated instead of the specific fields if it is not possible to parse
  # the contact information of a fetched job listing into the structured format. 
  field :formatted

end
