class Schedule < ApplicationRecord
  has_many :days

  def total_hours
    days.sum :hours
  end
end
