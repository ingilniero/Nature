class Ship < ActiveRecord::Base
  after_create :generate_code

  validates :number, presence: true

  def generate_code
    self.code = "NAV%05d" % id
    self.save
  end
end
