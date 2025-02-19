class User < ApplicationRecord
  has_many :projects
  validates :name, presence: true
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable
end
