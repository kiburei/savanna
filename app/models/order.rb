class Order < ApplicationRecord
  belongs_to :distributor
  has_many :transactions

end
