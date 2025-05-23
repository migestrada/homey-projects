class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  validates :commentable, presence: true
  validates :commentary, presence: true

  enum :status, STATUSES


  def register
    if valid?
      commentable.update(status: status)
      save()
      return self
    end
  end
end
