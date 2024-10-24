# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  team_id     :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_projects_on_team_id  (team_id)
#  index_projects_on_user_id  (user_id)
#
# Foreign Keys
#
#  team_id  (team_id => teams.id)
#  user_id  (user_id => users.id)
#
class Project < ApplicationRecord
  belongs_to :team
  belongs_to :user

  accepts_nested_attributes_for :team
  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user }
end
