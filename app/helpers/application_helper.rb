module ApplicationHelper
  def title(page_title)
  	base_title = "IPASA"
  	return "#{base_title} - Inmobiliaria de Promocion y Apoyo S.A." if page_title.empty?
  	return "#{base_title} - #{page_title}"
  end 

  def logo
  logo = image_tag("logo.png",:alt => "Sample App", :class => "round")
  end   
end
