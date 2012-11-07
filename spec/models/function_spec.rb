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

require 'spec_helper'

describe Function do

  subject { @function }

  it { should respond_to(:name) }
  it { should respond_to(:category_id) }

end
