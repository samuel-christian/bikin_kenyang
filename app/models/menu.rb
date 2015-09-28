class Menu < ActiveRecord::Base
	before_save :multiply_price
	has_many :orders
	mount_uploader :image, ImageUploader

	def multiply_price
		self.price = self.price * 1000
	end
end
