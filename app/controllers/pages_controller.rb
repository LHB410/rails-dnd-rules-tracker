class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @rules_list = current_user.rules_list.all
    @favorite_rules = current_user.favorited_by_type('Rule')
  end


end
