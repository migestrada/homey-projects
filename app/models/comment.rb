class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :commentable, presence: true
  validates :commentary, presence: true
end
