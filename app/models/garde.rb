class Garde < ActiveRecord::Base
  attr_accessible :quand, :avec, :payee
  
  # validations
  validates_presence_of :quand
  validates_uniqueness_of :quand

  # associations
  has_many :assignments, :dependent => :destroy
  has_many :medecins, :through => :assignments do
    def senior
      find :first, :conditions => { :senior => true }
    end
    def junior
      find :first, :conditions => { :senior => false }
    end
  end

  # custom methods
  def est_payee?
    if self.payee?
      "oui"
    else
      "non"
    end
  end
end





# == Schema Information
#
# Table name: gardes
#
#  id         :integer         not null, primary key
#  quand      :date
#  avec       :string(255)
#  payee      :boolean
#  created_at :datetime
#  updated_at :datetime
#  gcal_id    :string(255)
#

