module PortfoliosHelper
  
  def footer_navigation_links
    if params[:action]=='index' 
      link_to "Back to top", '#'
    else
      link_to "View All Portfolio Items", portfolios_path
    end
  end
  
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
  
end