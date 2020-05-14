class Group < ApplicationRecord
  belongs_to :user
  has_many :clocks, dependent: :destroy
end
