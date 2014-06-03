class DashboardsController < ApplicationController

  def index
    if user_signed_in?
      # @recordings  = current_user.recordings.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @user = current_user
    end
  end

end
