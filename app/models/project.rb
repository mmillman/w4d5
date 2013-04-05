class Project < ActiveRecord::Base
  attr_accessible :title, :description

  belongs_to :team
  has_many :items
end
