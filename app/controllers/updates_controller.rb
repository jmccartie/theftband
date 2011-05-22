class UpdatesController < ApplicationController
  before_filter :authenticate_user!, except: %w[index show]

  # GET /updates
  def index
    @updates = Update.page(params[:page]).per(5)
  end

  # GET /updates/1
  def show
    @update = Update.find(params[:id])
  end

  # GET /updates/new
  def new
    @update = Update.new
  end

  # GET /updates/1/edit
  def edit
    @update = Update.find(params[:id])
  end

  # POST /updates
  # POST /updates.xml
  def create
    @update = Update.new(params[:update])

    if @update.save
      redirect_to(@update, :notice => 'Update was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /updates/1
  def update
    @update = Update.find(params[:id])

    if @update.update_attributes(params[:update])
      redirect_to(@update, :notice => 'Update was successfully updated.')
    else
      render :action => "edit"
    end

  end

  # DELETE /updates/1
  def destroy
    @update = Update.find(params[:id])
    @update.destroy
    redirect_to(updates_url)
  end
end
