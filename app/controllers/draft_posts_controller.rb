class DraftPostsController < ApplicationController

  def index
    @posts = Post.drafts
  end

end
