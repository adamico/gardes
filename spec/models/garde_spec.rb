require 'spec_helper'

describe Garde do
  before(:each) do
    @garde = Garde.new
  end

  it "should be valid with date" do
    @garde.quand = Time.now.to_date
    @garde.should be_valid
  end
  describe "#est_payee?" do
    context "when payee is true" do
      it "should respond 'oui'" do
        @garde.payee = true
        @garde.est_payee?.should == "oui"
      end
    end
    context "when payee is false" do
      it "should respond 'non'" do
        @garde.payee = false
        @garde.est_payee?.should == "non"
      end
    end
  end
  describe "#medecins_initiales" do
    before(:each) do
      @garde.quand = Time.now.to_date
      @garde.save
      @garde.build_assignment
      @senior = Medecin.create(:name => "valueforname", :abbrev => "SS")
      @junior = Medecin.create(:name => "valueforname", :abbrev => "JJ")
    end
    context "when senior and junior are not blank" do
      it "should print 'senior.abbrev / junior.abbrev'" do
        @garde.assignment.senior = @senior
        @garde.assignment.junior = @junior
        @garde.assignment.save
        @garde.medecins_initiales.should == "SS / JJ"
      end
    end
    context "when junior is blank" do
      it "should print 'senior.abbrev / ##'" do
        @garde.assignment.senior = @senior
        @garde.assignment.save
        @garde.medecins_initiales.should == "SS / ##"
      end
    end
    context "when senior is blank" do
      it "should print '## / junior.abbrev '" do
        @garde.assignment.junior = @junior
        @garde.assignment.save
        @garde.medecins_initiales.should == "## / JJ"
      end
    end
  end
end








# == Schema Information
#
# Table name: gardes
#
#  id         :integer         not null, primary key
#  quand      :date
#  payee      :boolean         default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#  gcal_id    :string(255)
#

