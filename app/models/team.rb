# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_teams_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Team < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :destroy
  has_many :users

  accepts_nested_attributes_for :users, allow_destroy: true
  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user }  
end
