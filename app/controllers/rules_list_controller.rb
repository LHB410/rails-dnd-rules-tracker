class RulesListController < ApplicationController
  before_action :set_rules_list, only: [:show]

  def new
    @rules_list = RulesList.new
  end

  def create
    @rules_list = RulesList.new(rules_list_params)
    if @rules_list.save
      redirect_to rules_list_path(@rules_list)
    else
      render :new
    end
  end

  def index
  end

  def show
  end

  def delete
  end

  private
  def set_rules_list
    @rules_list = RulesList.find(params[:id])
  end

  def rules_list_params
    params.require(:rules_list).permit(:name)
  end
end
