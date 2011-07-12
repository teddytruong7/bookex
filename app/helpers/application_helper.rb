module ApplicationHelper
  # Return a title on a per-page basis.
  def title 
    base_title = "Online Community Book Exchange"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("books.jpg", :alt => "", :class => "round", :size => "90x90")
  end
  
end


