class RulesController < ApplicationController
  before_action :set_rules_list, only: [:new, :destroy, :update]
  before_action :set_rule, only: [:edit, :update]

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(rule_params)
    @rules_list = RulesList.find(params[:id])
    @rule.rules_list = @rules_list
    if @rule.save
      redirect_to rules_list_path(@rules_list)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @rule.update(rule_params)
    redirect_to rules_list_path
  end

  def destroy
    set_rule
    @rule.destroy
    redirect_to rules_list_path
  end


  private

  def set_rules_list
    @rules_list = RulesList.find(params[:id])
  end

  def set_rule
    @rule = Rule.find(params[:id])
  end


  def rule_params
    params.require(:rule).permit(:name, :content)
  end
end
