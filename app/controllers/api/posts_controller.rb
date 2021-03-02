class Api::PostsController < ApplicationController

  before_action :authenticate_employer, except: [:index, :show]

  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def create
    @post = Post.new(
      title: params[:title],
      employer_id: params[:employer_id],
      description: params[:description],
      image_url: params[:image_url],
      genre_id: params[:genre_id]
    )
    if @post.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @post = Post.find_by(id: params[:id])

    @post.title = params[:title] || @post.title
    @post.description = params[:description] || @post.description
    @post.image_url = params[:image_url] || @post.image_url
    @post.genre_id = params[:genre_id] || @post.genre_id

    if @post.save
      render "show.json.jb"
    else 
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end

  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy

    render json: { message: "deleted!" }
  end


end
