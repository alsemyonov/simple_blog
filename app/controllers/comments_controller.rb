class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params[:comment])

    if @comment.save
      flash[:notice] = 'comments.flash.created'
      redirect_to @article
    else
      render 'new'
    end
  end

end
