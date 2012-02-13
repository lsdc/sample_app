module ApplicationHelper
  #defini un logo si il n'est pas specifié
  def logo
    base_logo = image_tag("logo.png", :alt => "Application exemple", :class => "round")
    if @logo.nil?
      base_logo
    else
      @logo
    end
  end
  
  # verifie que le titre de la pages soit bien defini
  def titre
    base_titre = "Sample App une application qui cartonne"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
end
