class PostsController < ApplicationController
  
  def index
    @posts = Post.paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    
    if @post.save
      flash[:notice] = "投稿しました"
      redirect_to("/posts/index")
    else
      flash[:notice] = "必須項目を満たしてください"
      render("posts/new")
    end
  end
  
  
  def post_params
    params.permit(:id, :content, :created_at, :img, :title, :girl, :score)
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/")
  end
  
  def show
    @sort = Post.where(girl: params[:girl]).order(created_at: :desc)
  end
  
  def all
  end
  
  def score
    @sort_horse = Post.where(girl: params[:girl],score: params[:score]).order(created_at: :desc)
  end
end
