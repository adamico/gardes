class Garde < ActiveRecord::Base

  # validations
  validates_presence_of :quand
  validates_uniqueness_of :quand

  # associations
  has_one :assignment, :dependent => :destroy
  delegate :senior, :junior, :to => :assignment

  accepts_nested_attributes_for :assignment,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }

  # custom methods
  def medecins_initiales
    s_abbrev = senior.abbrev rescue ""
    j_abbrev = junior.abbrev rescue ""
    "#{s_abbrev} / #{j_abbrev}"
  end

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
#  payee      :boolean         default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#  gcal_id    :string(255)
#

