class HomeController < ApplicationController
 def index
    @link = Link.new
    @top_links = Link.order(:created_at => :desc).page params[:page]
  end
end
