class SongsController < ApplicationController
#  before_action :lookup_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end
  
  def new
    #@item = @item_type.items.new
  end
  
  def create
  #  @item = @item_type.items.new(item_params)
  #    if @item.save
  #      @item.get_image
  #      redirect_to root_path, notice: "Sucess! We added your Item!"
  #    else
  #      render 'new'
  #  end
  end
  
  def edit
  #  @item = @item_type.items.find(params[:id])
  end

  def update
  #  @item = update_attributes(params[:id])
  #  @item.get_image unless !@item.image_url.nil?
  #    if @item.update_attributes(item_params)
  #      redirect_to root_path, notice: "Sucess! We saved #{@item.title}!!"
  #    else
  #      render 'new'
  #  end
  end

  def destroy
  #  @item = destroy
  #  @item.destroy
  #  redirect_to root_path, notice: ":( It's gone!"
  end

private
# this is run before every action is started

def lookup_item_type
#  @item_type = ItemType.find(params[:item_type_id])
end

def lookup_song
  @song = Song.find(params[:id])
end

def song_params
  params.require(:song).permit(:title, :body)
end

end
