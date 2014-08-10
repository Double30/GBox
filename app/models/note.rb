# == Schema Information
#
# Table name: notes
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  content       :text
#  repository_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Note < ActiveRecord::Base
  belongs_to :repository
  validates :name, uniqueness: {scope: :repository_id }
end