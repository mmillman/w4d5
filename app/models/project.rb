class Project < ActiveRecord::Base
  attr_accessible :team_id, :title, :description

  belongs_to :team
  has_many :items
end
