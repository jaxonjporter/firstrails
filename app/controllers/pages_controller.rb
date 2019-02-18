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
  def create 
    @pages = Page.new(pages_params)
    if @pages.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit 
    @pages = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end
  def destroy
    @pages = Page.find(params[:id]).destroy
    redirect_to pages_path
  end
  private
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end


end
