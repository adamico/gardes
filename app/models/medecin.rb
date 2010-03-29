class Medecin < ActiveRecord::Base
  # validations
  validates_presence_of :name, :abbrev
  
  # named scopes
  named_scope :junior, :conditions => { :senior => false}
  named_scope :senior, :conditions => { :senior => true}

  # custom methods
  def gardes
    conditions = self.senior? ? {'assignments.senior_id' => self.id} : {'assignments.junior_id' => self.id}
    Garde.all :joins => :assignment, :conditions => conditions
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

