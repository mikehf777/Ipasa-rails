class PagesController < ApplicationController
  def home
  @titulo = "Home"
  echo "Hola Mundo!"
  end

  def contacto
  @titulo= "Contacto"
  end
end
