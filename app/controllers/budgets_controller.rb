class BudgetsController < ApplicationController
  before_action :fetch_group
  def index
    @user = current_user
    @budgets = @group.budgets
    @total = @budgets.sum(:amount)
  end

  def new
    @budget = Budget.new
  end

  def create
    @user = User.find(params[:user_id])
    @budget = Budget.new(budget_params)
    @budget.user_id = current_user.id
    if @budget.valid?
      @budget.save
      @budget.groups.push(@group)
      flash[:notice] = 'New Budget Successfully Created'
      redirect_to user_group_budgets_path
    else
      render :new
    end
  end

  def destroy
    @budget = Budget.find_by(id: params[:id])
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to user_group_budgets_path, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:name, :amount)
  end

  def fetch_group
    @group = Group.find(params[:group_id])
  end
end
