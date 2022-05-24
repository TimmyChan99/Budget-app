class GroupsController < ApplicationController
  def home
    @categories = current_user.groups
  end

  def show
    @category = Group.find(params[:id])
    @purchases = Purchase.where(['group_id = :id', { id: params[:id].to_s}]).order(created_at: :desc)
    @total = @category.purchases.sum { |item| item.entity.amount }
  end

  def new
    @category = Group.new
  end

  def create
    @category = Group.new(category_params)

    flash[:notice] = 'Categry created successfully'
    if @category.save
      redirect_to authenticated_root_path
    else
      redirect_to new_user_group_path(current_user)
    end
  end

  def destroy
    @category = Group.find(params[:id])
    @category.destroy
    redirect_to authenticated_root_path
  end

  private

  def category_params
    p = params.require(:category).permit(:name, :icon)
    p[:author_id] = params[:user_id]
    p
  end

end
