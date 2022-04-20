class RulesListsController < ApplicationController
  before_action :set_rules_list, only: [:show, :update, :edit, :destroy]

  def new
    @rules_list = RulesList.new
  end

  def create
    @rules_list = RulesList.new(rules_list_params)
    @rules_list.user = current_user
    if @rules_list.save
      redirect_to rules_list_path(@rules_list)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @rules_list.update(rules_list_params)
    redirect_to rules_list_path(@rules_list)
  end

  def index
    @rules_list = RulesList.all
  end

  def show
  end

  def destroy
    @rules_list.destroy!
    redirect_to rules_lists_path
  end

  private
  def set_rules_list
    @rules_list = RulesList.find(params[:id])
  end

  def rules_list_params
    params.require(:rules_list).permit(:name, :description, :picture)
  end
end
