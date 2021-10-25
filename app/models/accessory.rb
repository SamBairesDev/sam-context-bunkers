class Accessory < ApplicationRecord
    has_and_belongs_to_many :vapers
    has_and_belongs_to_many :orders
end
