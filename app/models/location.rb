class Location 
  include Mongoid::Document
  embedded_in :job_opening, reverse_of: :location

  field :postal_code
  field :address
  field :at_home, type: Boolean

  field :city
  field :region
  field :country
end
