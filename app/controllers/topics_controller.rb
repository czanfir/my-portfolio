class TopicsController < ApplicationController
  layout 'blog'
  
  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
      @topics = Topic.all
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
      @topics = Topic.with_blogs
    end
  end
end