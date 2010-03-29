class Assignment < ActiveRecord::Base
  belongs_to :junior, :class_name => 'Medecin'
  belongs_to :senior, :class_name => 'Medecin'
  belongs_to :garde
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

