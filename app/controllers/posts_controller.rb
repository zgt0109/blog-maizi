class PostsController < ApplicationController
	def index
		@posts = if params[:category]
			Post.includes(:categories).where(categories: { id: params[:category] })
		else
			Post.all
		end
	end
end
