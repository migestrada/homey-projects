class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :commentable, presence: true
  validates :commentary, presence: true


  def register
    return create() if valid?
  end
end
