class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @upcoming_events = Event.all
  end
end
