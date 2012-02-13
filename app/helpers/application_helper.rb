module ApplicationHelper
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
