 class CommentsController < ApplicationController
 	def create
 		@comment=Comment.new(comment_params)
 	 	 if @comment.save
 	 	 else
 	 	 	flash[:alert]=@comment.errors
 	 	 end
 	 	redirect_to :back
 	end
 	def comment_params
 		params.require(:comment).permit(:name,:email,:content,:post_id)
 	end
 end
