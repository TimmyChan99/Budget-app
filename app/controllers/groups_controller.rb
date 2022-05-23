class GroupsController < ApplicationController
	def home
	@categories = current_user.groups
  end

	def show
		
	end

	def new
		@category = Group.new
	end

	def create
		@category = Group.new(category_params)

		if @category.save
			flash[:notice] = 'Categry created successfully'
			redirect_to authenticated_root_path
		else
			flash[:notice] = 'Categry created successfully'
			redirect_to new_user_group_path(current_user)
		end
	end

	private

	def category_params
		p = params.require(:category).permit(:name, :icon)
		p[:author_id] = params[:user_id]
		p
	end
end
