module PortfoliosHelper

  def footer_navigation_links
    if params[:action]=='index' 
      link_to "Back to top", '#'
    else
      link_to "View All Portfolio Items", portfolios_path
    end
  end
end