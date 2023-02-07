class Project < ApplicationRecord
  has_one :budget
  has_one :team
  has_many :tasks
  enum :status, { in_progress: 0, completed: 1, rejected: 2, on_hold: 3 }

  def current?
    return due_date < Date.today if status == 'in_progress'

    true
  end
end
