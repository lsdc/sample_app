require 'spec_helper'

describe PagesController do
  render_views
  before(:each) do
    @base_titre = "Sample App une application qui cartonne"
  end
  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    
    it "il devrai avoir le bon titre" do
      get 'home'
      response.should have_selector('title', :content => @base_titre +" | Accueil")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    
    it "il devrai avoir le bon titre" do
      get 'contact'
      response.should have_selector('title', :content => @base_titre +" | Contact")
    end
  end
  
  describe "GET 'about'" do
    it "return http success" do
      get 'about'
      response.should be_success
    end
    
    it "il devrai avoir le bon titre" do
      get 'about'
      response.should have_selector('title', :content => @base_titre +" | A Propos")
    end
  end
  
  describe "GET 'help'" do
    it "return http success" do
      get 'help'
      response.should be_success
    end
    it "il devrai avoir le bon titre" do
      get 'help'
      response.should have_selector('title', :content => @base_titre +" | Aide")
    end
  end

end
