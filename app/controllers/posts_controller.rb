class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	# forces user to log in befor going to post
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@post = Post.all.order("created_at DESC")
	end

	def show
	end

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @post.user == current_user then
			if @post.update(post_params)
				redirect_to @post
			else
				render 'edit'
			end
		end
	end

	def destroy
		if @post.user == current_user then
			@post.destroy

			redirect_to root_path
		end
	end

	private

	def find_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :content, :tags)
	end

end
