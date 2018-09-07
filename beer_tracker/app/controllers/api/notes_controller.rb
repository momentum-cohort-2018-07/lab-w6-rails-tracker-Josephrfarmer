class Api::NotesController < ApplicationController
  before_action :set_beer, only: [:show, :update, :destroy]
  before_action :set_note, only: [:show, :update, :destroy]

  def index 
    @beer = Beer.find(params[:beer_id]) 
    render json: @beer.notes
  end 

  def new

  end   

  def create  
    @note = Note.create(
      notes: note_params,
      beer_id: @beer.id
      )
    render json: @note
  end

  def destroy 
    @note.destroy
  end   
  

  private
  
    def set_beer
      @beer = Beer.find(params[:id])
    end

    def set_note 
      @note =Note.find(params[:id])
    end   

    def note_params 
      params.require(:note).permit(:post, :beer_id)
end
