class Item < ActiveRecord::Base
  attr_accessible :project_id, :title, :description, :completed

  validates :project_id, :title, :description, :completed, :presence => true

  belongs_to :project
end
