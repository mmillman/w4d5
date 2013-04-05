class Item < ActiveRecord::Base
  attr_accessible :project_id, :title, :description, :completed

  belongs_to :project
end
