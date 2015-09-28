class MenusController < ApplicationController

	def index
		@menus = Menu.where(:day => Time.now.wday)
		@items = @menus.each_slice(3).to_a
	end
end
