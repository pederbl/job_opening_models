class JobOpening
  include Mongoid::Document

  field :listing_id, type: Integer
  field :updated_at, type: DateTime
  field :deleted_at, type: DateTime
  field :publish_on, type: Date
  #field :publish_until, type: Date

  field :source 
  field :source_id
  field :source_url

  field :title
  field :body
  #field :seasons, type: Integer, default: 0
  #field :num_positions, type: Integer, default: 1
  #field :co_founder, type: Boolean, default: false
  #field :contractor, type: Boolean, default: false
  #field :original_language

  #field :industry_tags, type: Array
  #field :job_category_tags, type: Array
  #field :position_title

  embeds_one :employer
  #embeds_one :requirements, class_name: "Requirements"
  #embeds_one :worktime
  #embeds_one :duration
  #embeds_one :salary
  #embeds_one :application

  embeds_many :locations
  #embeds_many :contacts
  #embeds_many :union_contacts, class_name: "Contact"

  #embeds_many :translations

  validates :updated_at, presence: true
  validates :source, presence: true
  validates :source_id, presence: true
end
