class MainController < ApplicationController

  def index
    @posts = Post.all.sort { |a, b| a.created_at - b.created_at }
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    # render 'new.html.erb'
  end

  def create
    @post = Post.create(
		title: params[:title],
		content: params[:content]
	)
	if @post.valid?
		redirect_to @post
	else
		render action: :new
	end

  end

  def delete
	  @post = Post.find(params[:id]).destroy
	  redirect_to '/'
  end

  def update
	@post = Post.find(params[:id])
	@title = @post.title.split(' ').join('_')
	@content = @post.content
  end

  def update_post
	  byebug
	  @post = Post.update(params[:id], title: params[:title], content: params[:content])
  end


end
