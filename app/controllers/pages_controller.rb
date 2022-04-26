class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @rules_list = current_user.rules_list.all
    @favorite_cosmetics = current_user.favorited_by_type('Cosmetic')
  end


end
