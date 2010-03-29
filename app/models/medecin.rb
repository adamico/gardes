class Medecin < ActiveRecord::Base
  has_many :assignments, :dependent => :destroy
  has_many :gardes, :through => :assignments
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

