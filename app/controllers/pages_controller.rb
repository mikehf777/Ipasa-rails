class PagesController < ApplicationController
  def home
  @titulo = "Home"
  puts "Hola Mundo!"
  end
  
  def contacto
  @titulo= "Contacto"
  end
end
