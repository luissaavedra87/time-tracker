class Group < ApplicationRecord
  validates :name, :icon, presence: true
  
  belongs_to :user
  has_many :clocks, dependent: :destroy
  has_one_attached :icon
end
