class Group < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true

  belongs_to :user
  has_many :clocks, dependent: :destroy
  has_one_attached :icon
end
