class Admin::MenusController < Admin::AdminController

	def index
		@menus = Menu.all
	end
end
