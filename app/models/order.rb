class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :accessories
  has_and_belongs_to_many :vapers
  has_and_belongs_to_many :liquids
end
