class Ship < ActiveRecord::Base
  after_create :generate_code

  def generate_code
    code = "NAV%05d" % id
    save
  end
end
