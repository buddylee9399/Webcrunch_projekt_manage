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
require "test_helper"

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
