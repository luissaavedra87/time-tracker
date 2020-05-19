class Clock < ApplicationRecord
  validates :name, :hour, presence: true

  belongs_to :user
  belongs_to :group, optional: true

  scope :order_by_most_recent, -> { order(created_at: :desc) }
end
