require 'spec_helper'

describe Assignment do
  before(:each) do
    @valid_attributes = {
      :senior_id => 1,
      :junior_id => 1,
      :garde_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Assignment.create!(@valid_attributes)
  end
end



# == Schema Information
#
# Table name: assignments
#
#  id         :integer         not null, primary key
#  senior_id  :integer
#  junior_id  :integer
#  garde_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

