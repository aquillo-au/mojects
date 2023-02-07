class Task < ApplicationRecord
  enum :status, { in_progress: 0, completed: 1, rejected: 2 }

  def current?
    return due_date < Date.today if status == 'in_progress'

    true
  end
end
