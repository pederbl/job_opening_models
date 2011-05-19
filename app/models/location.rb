class Location 
  include Mongoid::Document
  embedded_in :job_opening, reverse_of: :location

  field :at_home, type: Boolean
  field :geonameid, type: Integer
  field :postal_code
  field :address

  field :city # deprecated
  field :region # deprecated
  field :country # deprecated

end
