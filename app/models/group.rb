class Group < ApplicationRecord
  belongs_to :user
  has_many :clocks, dependent: :destroy
  has_one_attached :icon
end
