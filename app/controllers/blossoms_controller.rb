class BlossomsController < ApplicationController
  def index
    @blossoms = Blossom.all
  end

  def new
    @new_blossom = Blossom.new
  end

  def create
    blossoms_params[:blossoms].each do |blossom|
      new_blossom = Blossom.create(blossom)
    end
    redirect_to 'index'
  end


  def show
  end

  def edit
  end


  private
  def blossoms_params
    params.require(:blossom).permit(:hiragana, :kanji, :english_name, :season)
  end


  def blossoms_params
    params.permit(blossoms: [:hiragana, :kanji, :english_name, :season])
  end
end



