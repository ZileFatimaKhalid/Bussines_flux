class PagesController < ApplicationController
  
  def home
  @posts = Bussiness.all
  @tk = Task.all
  end
end
