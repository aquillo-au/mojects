class Team < ApplicationRecord
  has_many :projects
  has_many :memberships
end
