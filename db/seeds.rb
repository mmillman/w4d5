# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
  t1 = Team.create!(:name => "Team 1")
  t2 = Team.create!(:name => "Team 2")
  t3 = Team.create!(:name => "Team 3")

  p1 = Project.create!(
    :team_id => 1,
    :title => "The Big Project",
    :description => "This is a test project"
  )
  p2 = Project.create!(
    :team_id => 1,
    :title => "The Small Project",
    :description => "This is another test project"
  )
  p3 = Project.create!(
    :team_id => 2,
    :title => "Project A6",
    :description => "Yet another test project!"
  )

  p1.items.create!(
    :project_id => p1.id,
    :title => "A big item",
    :description => "This is the biggest item of the week.",
    :completed => "0"
  )
  p1.items.create!(
    :project_id => p1.id,
    :title => "Second big item",
    :description => "Do everything humanly possible.",
    :completed => "0"
  )


end