class Requirements 
  include Mongoid::Document
  include Mongoid::TranslatedStrings
  embedded_in :job_opening, reverse_of: :requirements

  # Vienna Convention on Road Traffic 1968
  field :drivers_license, type: Array
 
  #field :educational_level

  field :education, type: Hash

  # Number of years experience from working with similar duties
  # -1 = Yes experience is required but not specified
  # 0 = No experience required
  field :experience, type: Integer

  # Specifies if the applicants needs to be able utilize a self-owned car.
  field :own_car, type: Boolean

  field :minimum_age, type: Integer

  field :maximum_age, type: Integer


  # A description of the required experience.
  field :text, type: Hash
  
  embeds_many :languages, class_name: "LanguageRequirement"

end
