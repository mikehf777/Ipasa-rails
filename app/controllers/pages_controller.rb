class PagesController < ApplicationController
  def home
  @titulo = "Home"
  end
  
  def contacto
  @titulo= "Contacto"
  end
end
