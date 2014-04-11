class Body
  include Mongoid::Document
  field :name, type: String
  field :years, type: Hash
  validates :name, uniqueness: true
end
