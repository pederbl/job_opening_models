class JobOpening
  include Mongoid::Document
  include Mongoid::TranslatedStrings

  field :updated_at, type: DateTime
  field :deleted_at, type: DateTime
  field :publish_at, type: DateTime
  field :publish_until, type: DateTime

  field :source 
  field :source_id
  field :source_url

  field :title, type: Hash
  field :body, type: Hash
  field :num_positions, type: Integer, default: 1
  field :primary_language, default: 'x'

  #field :industry_tags, type: Array
  field :job_category_tags, type: Array
  field :isco, type: Integer
  field :nace, type: Integer
  field :job_title, type: Hash
  field :job_type  # e.g. contractor, cofounder, internship, trainee

  embeds_one :employer
  embeds_one :requirements, class_name: "Requirements"
  embeds_one :worktime
  embeds_one :duration
  embeds_one :salary
  embeds_one :application
  embeds_one :location

  embeds_many :contacts
  embeds_many :union_contacts, class_name: "Contact"

  validates :updated_at, presence: true
  validates :source, presence: true
  validates :source_id, presence: true

  scope :active, where: { deleted_at: nil }

end


