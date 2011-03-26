class Employer
  include Mongoid::Document
  include Mongoid::TranslatedStrings
  embedded_in :job_opening, reverse_of: :employer

  field :name
  field :national_id
  field :email
  field :phone
  field :fax
  field :website
  field :mail_address
  field :visit_address
  field :text, type: Hash
  #field :staffing_agency, type: Boolean

end
