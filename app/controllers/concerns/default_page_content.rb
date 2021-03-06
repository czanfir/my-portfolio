module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "Cristian Zanfir's Portfolio"
    @seo_keywords = "Cristian Zanfir Portfolio"
  end
end