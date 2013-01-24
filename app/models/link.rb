class Link < ActiveRecord::Base
  attr_accessible :code, :url

  before_save :create_code

  def create_code
		self.code = SecureRandom.hex(10)
  end
end
