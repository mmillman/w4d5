class Project < ActiveRecord::Base
  attr_accessible :team_id, :title, :description

  validates :title, :presence => true, :uniqueness => { :scope => :team_id }

  belongs_to :team
  has_many :items
end
