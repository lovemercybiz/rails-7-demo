class CommentsController < ApplicationController
    before_action :set_post, only: %i[ create destroy ]
    
    def create
        @post.comments.create! params.required(:comment).permit(:content)
        redirect_to @post
    end

    # def destroy
    #     @post.comment[:id].destroy
    
    #     respond_to do |format|
    #       format.html { redirect_to posts_url, notice: "comment was successfully destroyed." }
    #       format.json { head :no_content }
    #     end
    # end

    private
    def set_post
        @post = Post.find(params[:post_id])
    end


end
