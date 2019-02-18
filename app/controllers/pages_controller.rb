class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @pages = Page.find(params[:id])
  end

  def new
    @pages = Page.new
  end
end
