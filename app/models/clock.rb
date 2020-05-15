class Clock < ApplicationRecord
  belongs_to :user
  belongs_to :group, optional: true

  scope :order_by_most_recent, -> { order(created_at: :desc) }

  def sum_hours
  end
end
