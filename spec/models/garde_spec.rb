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
end
