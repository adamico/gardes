class Garde < ActiveRecord::Base
  def est_payee?
    if self.payee?
      "oui"
    else
      "non"
    end
    
  end
end
