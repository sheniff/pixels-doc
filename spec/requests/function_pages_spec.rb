require 'spec_helper'

describe "FunctionPages" do

  subject { page }

  describe "show function page" do
    let(:category) { FactoryGirl.create(:category) }
    let(:function) { FactoryGirl.create(:function, category: @category ) }
    before { visit function_path(function) }

    it { should have_selector('h1',     text: function.name) }
    it { should have_selector('title',  text: full_title(function.name)) }
  end

end
