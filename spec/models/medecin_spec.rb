require 'spec_helper'

describe Medecin do
  before(:each) do
    Medecin.destroy_all
    Garde.destroy_all
    @medecin = Medecin.new
  end

  it "should be valid with name and abbrev" do
    @medecin.name = "valueforname"
    @medecin.abbrev = "valueforabbrev"
    @medecin.should be_valid
  end
  describe "#gardes" do
    before(:each) do
      @senior = Medecin.create(:name => "name", :abbrev => "SS", :senior => true)
      @junior = Medecin.create(:name => "name", :abbrev => "JJ", :senior => false)
      @garde = Garde.create(:quand => Time.now.to_date)
      @garde.build_assignment
    end
    context "when current instance is a senior" do
      it "should list gardes where the senior is the current instance" do
        @garde.assignment.senior = @senior
        @garde.assignment.save
        @senior.gardes.first.should == @garde
      end
    end
    context "when current instance is a junior" do
      it "should list gardes where the junior is the current instance" do
        @garde.assignment.junior = @junior
        @garde.assignment.save
        @junior.gardes.first.should == @garde
      end
    end
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

