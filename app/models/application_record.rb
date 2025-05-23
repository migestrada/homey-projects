class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  STATUSES = [
    :idea,
    :planning,
    :pending_approval,
    :approved,
    :in_progress,
    :on_hold,
    :under_review,
    :need_changes,
    :completed,
    :canceled,
  ]
end
