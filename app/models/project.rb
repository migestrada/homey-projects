class Project < ApplicationRecord
  has_many :comments, as: :commentable
  validates :title, presence: true
  enum :status, STATUSES
end
