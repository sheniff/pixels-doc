# == Schema Information
#
# Table name: functions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  category_id :integer
#  description :string(255)
#  content     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Function < ActiveRecord::Base
  attr_accessible :category_id, :content, :description, :name
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true
  validates :content, presence: true
end
