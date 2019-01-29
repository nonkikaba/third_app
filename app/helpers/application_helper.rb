module ApplicationHelper
  def page_title
    title = "Chatter"
    title = @page_title + "-" + title if @page_title
    title
  end

  
end
