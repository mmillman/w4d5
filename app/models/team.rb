class Team < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => :true

  has_many :projects
  has_many :team_memberships
  has_many :members, :through => :team_memberships, :source => :user
end
