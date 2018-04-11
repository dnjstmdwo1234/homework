class HomeworkController < ApplicationController
  def index
    @homework123 = Homework.all
  end

  def create
    homework = Homework.new
    homework.title = params[:title]
    homework.content = params[:content]
    homework.save
    
    redirect_to "/"
    
  end
end
