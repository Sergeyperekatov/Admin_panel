class TracksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tracks = Track.all #('created_at DESC') для сортировки
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to tracks_path, notice: "The track #{@track.author} #{@track.name} has been added!" and return
    end
    render 'new'
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])

    if @track.update_attributes(track_params)
      redirect_to tracks_path, notice: "The track #{@track.author} #{@track.name} has been updated!" and return
    end

    render 'edit'
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    redirect_to tracks_path, notice: "The track #{@track.author} #{@track.name} has been deleted!" and return
  end
private
  def track_params
    params.require(:track).permit(:author, :name, :release_date, :image, :audio)
  end
end
