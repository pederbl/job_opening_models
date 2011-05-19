class LanguageRequirement
  include Mongoid::Document
  embedded_in :requirements, reverse_of: :languages


  # IETF language code 
  field :language

  # Fluency in ILR Scale
  # 1 ILR Level 1 - Elementary proficiency
  # 2 ILR Level 2 - Limited working proficiency
  # 3 ILR Level 3 - Professional working proficiency
  # 4 ILR Level 4 - Full professional proficiency
  # 5 ILR Level 5 - Native or bilingual proficiency
  field :proficiency, type: Integer

end
