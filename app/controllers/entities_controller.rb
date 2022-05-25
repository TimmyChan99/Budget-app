class EntitiesController < ApplicationController
  before_action :authenticate_user!

  def new
    @transaction = Entity.new
    @purchases = Purchase.new
    @categories = Group.all
  end

  def create
    @transaction = Entity.new(
      name: permitted[:name], author_id: permitted[:author_id], amount: permitted[:amount]
    )
    if @transaction.save
      @purchase = Purchase.create(group_id: permitted[:group_id], entity_id: @transaction.id)
      flash[:notice] = 'Transaction created successfully'
      redirect_to user_group_path(current_user, permitted[:group_id])
    else
      flash[:alert] = 'Error: Could not create a transaction'
      redirect_to new_entity_path
    end
  end

  private

  def permitted
    params.require(:transaction).permit(:author_id, :name, :amount, :group_id)
  end
end
