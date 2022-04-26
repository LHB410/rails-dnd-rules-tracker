class RulesController < ApplicationController
  before_action :set_rules_list
  before_action :set_rule, only: [:update, :edit]

  def new
    @rule = Rule.new
  end

  def create
    @rule = Rule.new(rule_params)
    @user = current_user
    @rules_list = RulesList.find(params[:rules_list_id])
    @rule.rules_list = @rules_list
    if @rule.save!
      redirect_to rules_list_path(@rules_list)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @rule.update(rule_params)
      redirect_to rules_list_path(@rules_list)
    else
      render :edit
    end
  end

  def destroy
    @rule = @rules_list.rules.find(params[:id])
    @rule.destroy
    redirect_to rules_list_path(@rules_list)
  end

  def toggle_favorite
    # The toggle_favorite action finds the cosmetic to like through the id parameter.
    @rule = Rule.find_by(id: params[:id])
    # It checks if a user has liked it. If it’s been favourited before, it is now unfavorited and vice versa.
    current_user.favorited?(@rule) ? current_user.unfavorite(@rule) : current_user.favorite(@rule)
  end

  private

  def set_rules_list
    @rules_list = RulesList.find(params[:rules_list_id])
  end

  def set_rule
   @rule = @rules_list.rules.find(params[:id])
  end

  def rule_params
    params.require(:rule).permit(:name, :content, :category, :rules_list_id)
  end
end
