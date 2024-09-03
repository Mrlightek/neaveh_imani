class PostsController < ApplicationController
	#before_action :find_model

	def index
		@post = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def create
		@post =  Post.new(post_params)
		respond_to do |format|
      if @post.save
        format.html { redirect_to dashboard_url(@post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
	end

	def update
		respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
	end

	def edit
		
	end
	

	private
	def find_model
		@model = Posts.find(params[:id]) if params[:id]
	end

	# Only allow a list of trusted parameters through.
    def post_params
      params.permit(:title,:body,:published,:user_id)
    end
end