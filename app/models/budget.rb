class Budget < ApplicationRecord
  def in_budget?
    (total - (spent + allocated)) >= 0
  end
end
