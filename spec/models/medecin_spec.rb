require 'spec_helper'

describe Medecin do
  before(:each) do
    @valid_attributes = {
      
    }
  end

  it "should create a new instance given valid attributes" do
    Medecin.create!(@valid_attributes)
  end
end



# == Schema Information
#
# Table name: medecins
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  abbrev     :string(255)
#  senior     :boolean
#  created_at :datetime
#  updated_at :datetime
#

