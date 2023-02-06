class Project < ApplicationRecord

  def current
    due_date < Date.today
  end
end
