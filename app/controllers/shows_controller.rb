class ShowsController < ApplicationController
  before_filter :authenticate_user!, except: %w[index show]

  # GET /shows
  def index
    @upcoming_shows = Show.where("date > ?", Date.yesterday).limit(50)
    @past_shows = Show.where("date < ?", Date.today).limit(50)
  end

  # GET /shows/new
  def new
    @show = Show.new
  end

  # GET /shows/1/edit
  def edit
    @show = Show.find(params[:id])
  end

  # POST /shows
  def create
    @show = Show.new(params[:show])

    if @show.save
      redirect_to(@show, :notice => 'Show was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /shows/1
  def update
    @show = Show.find(params[:id])

    if @show.update_attributes(params[:show])
      redirect_to(@show, :notice => 'Show was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /shows/1
  def destroy
    @show = Show.find(params[:id])
    @show.destroy
    redirect_to(shows_url)
  end
end
