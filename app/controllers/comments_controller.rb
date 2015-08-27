class CommentsController < ApplicationController

	def create
		@pin = Pin.find(params[:pin_id])
		@comment = @pin.comments.build(comment_params)
		@comment.save
		redirect_to pin_path(@pin)
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
	end

end

private
	def comment_params
		params.require(:comment).permit(:content)
	end
