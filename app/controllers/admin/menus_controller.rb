class Admin::MenusController < Admin::AdminController

	def index
		@column_names = Menu.column_names - ['id', 'created_at', 'updated_at']
		@menus = Menu.all.order(:day)
	end

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menu_params)
		if @menu.save
			flash[:success] = "Menu successfully created."
			redirect_to admin_menus_path
		else
			flash[:error] = "Menu failed to be created."
			render "new"
		end
	end

	def show
		@menu = Menu.find(params[:id])
	end

	def edit
		@menu = Menu.find(params[:id])
	end

	def update
		@menu = Menu.find(params[:id])
		if @menu.update_attributes(menu_params)
			flash[:success] = "Update success."
			redirect_to admin_menus_path
		else
			flash[:error] = "Update failed."
			render "edit"
		end
	end

	def destroy
		@menu = Menu.find(params[:id])
		flash[:success] = false
		if @menu.destroy
			flash[:success] = true
		end
		redirect_to admin_menus_path
	end

	private

	def menu_params
		params.require(:menu).permit(:name, :price, :image, :day, :discount, :rating)
	end
end
