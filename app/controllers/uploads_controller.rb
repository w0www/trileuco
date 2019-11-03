class UploadsController < ApplicationController

  before_action :set_upload, only: [:show, :edit, :update, :destroy]

  def index
    @uploads = Upload.order('created_at DESC')
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      redirect_to list_path
    else
      render :new
    end
  end

  def update
    if @upload.update_attributes(upload_params)
      redirect_to upload_path(@upload)
    else
      render :edit
    end
  end

  def destroy
    @upload.delete
    redirect_to list_path
  end

  private

  def upload_params
    params.require(:upload).permit(:title, :file)
  end

  def set_upload
    @upload = Upload.find(params[:id])
  end

end
