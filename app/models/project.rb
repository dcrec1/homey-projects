class Project < ApplicationRecord
  enum :status, [ :not_started, :in_progress, :completed, :on_hold, :cancelled ]
  validates :name, presence: true
end
