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

  u1 = User.create(:name => "Mark")
  u2 = User.create(:name => "Ian")
  u3 = User.create(:name => "Lisa")
  u4 = User.create(:name => "Roman")
  u5 = User.create(:name => "Josh")
  u6 = User.create(:name => "Eric")
  u7 = User.create(:name => "James")

  tm1 = TeamMembership.create(:team_id => 1, :user_id => 1)
  tm2 = TeamMembership.create(:team_id => 1, :user_id => 4)
  tm3 = TeamMembership.create(:team_id => 1, :user_id => 5)
  tm4 = TeamMembership.create(:team_id => 2, :user_id => 7)
  tm5 = TeamMembership.create(:team_id => 2, :user_id => 3)
  tm6 = TeamMembership.create(:team_id => 2, :user_id => 6)
  tm7 = TeamMembership.create(:team_id => 2, :user_id => 1)
  tm8 = TeamMembership.create(:team_id => 2, :user_id => 4)
end