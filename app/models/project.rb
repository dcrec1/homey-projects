class Project < ApplicationRecord
  extend FriendlyId
  belongs_to :user
  enum :status, [ :not_started, :in_progress, :completed, :on_hold, :cancelled ]
  friendly_id :name, use: :slugged
  validates :name, presence: true
  has_paper_trail
end
