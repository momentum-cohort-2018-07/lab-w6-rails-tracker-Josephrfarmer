class Api::NotesController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy,]

  def index  
  end 

  def new

  end   

  def create  

  end

  def destroy 
  end   
  

  private
  
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def set_note 
      @note =Note.find(params[:id])
    end   
end
