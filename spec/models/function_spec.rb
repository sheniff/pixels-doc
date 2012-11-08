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

  let(:category) { FactoryGirl.create(:category) }
  before { @function = category.functions.build(name: "Test Function", description: "Short Description", content: "Lipsum long description that I'm not going to write right now...") }

  subject { @function }

  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:content) }
  it { should respond_to(:category_id) }

  it { should be_valid }

end
