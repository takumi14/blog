class BlogsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @article = Article.all
  end

  def new 
  end

  def create
    Article.create(blog_params)
end

private
def blog_params
    params.permit(:title, :text)
end

private
    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end


end