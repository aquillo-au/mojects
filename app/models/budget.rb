class Budget < ApplicationRecord
  belongs_to :project
  def in_budget?
    (total - (spent + allocated)) >= 0
  end
end
