require 'spec_helper'

describe "LayoutLinks" do

  it "devrait trouver une page Accueil at '/'" do
    get '/'
    response.should have_selector('title', :content => "Accueil")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an A Propos page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "A Propos")
  end

  it "devrait trouver une page Aide at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "Aide")
  end
  
  it "devrai trouver un page Inscription at '/signup'" do
    get '/signup' 
    response.should have_selector('title', :content => 'Inscription')
  end
end