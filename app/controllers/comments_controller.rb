class CommentsController < ApplicationController
   before_action :authenticate_user!

def new
  @answer = @question.answers.new
end


 def create
    @poster = Poster.find(params[:poster_id])
    @comment = Comment.new(comment_params)
    @comment.poster = @poster
    @comment.user = current_user
    if @comment.save
       respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
 end
end



private

 def comment_params
  params.require(:comment).permit(:body)
 end


end
