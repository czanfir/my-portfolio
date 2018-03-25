class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
  
  def tech_news
    @tweets = Hash.new
    @tweets[:java] = SocialTool.twitter_search "#java"
    @tweets[:rails] = SocialTool.twitter_search "#rubyonrails"
    @tweets[:coding] = SocialTool.twitter_search "#coding"
    @tweets
  end

end
