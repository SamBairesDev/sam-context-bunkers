class Order < ApplicationRecord
  belongs_to :user
  has_many :accessories
  has_many :vapers
  has_many :liquids
end
