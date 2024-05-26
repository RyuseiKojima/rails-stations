class Movie < ApplicationRecord
  has_many :schedules, dependent: :restrict_with_exception

  validates :name, presence: true, uniqueness: true
end
