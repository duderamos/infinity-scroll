class PostsController < ApplicationController
  def index
    @posts = Post.paginate(page: params[:page]).order('created_at DESC')
    respond_to do |format|
      format.js
      format.html
    end
  end
end
