class PostersController < ApplicationController
  before_action :set_poster, only: [:show, :edit, :update, :destroy]


  # GET /posters
  # GET /posters.json
  def index
    @posters = Poster.where(approved: true).all
    @categories = Category.all
    @locations = Location.all
  end

  # GET /posters/1
  # GET /posters/1.json
  def show
  end

  # GET /posters/new
  def new
    @poster = Poster.new
    @poster.photos.new
  end

  # GET /posters/1/edit
  def edit
    @poster.photos.new
  end

def approve
  @poster = Poster.find(params[:id])
  @poster.update(approved: true)
  redirect_to "/dashboard"
  flash[:notice] = 'Poster has been approved'
end

  # POST /posters
  # POST /posters.json
  def create
    @poster = Poster.new(poster_params)
    @poster.user = current_user

    respond_to do |format|
      if @poster.save
        if params[:photos_attributes]
          params[:photos_attributes].each do |photo|
            @poster.photos.create(posterimage: photo[:posterimage])
          end
        end
        format.html { redirect_to @poster, notice: 'Poster was successfully created.' }
        format.json { render :show, status: :created, location: @poster }
      else
        format.html { render :new }
        format.json { render json: @poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posters/1
  # PATCH/PUT /posters/1.json
  def update
    respond_to do |format|
      if @poster.update(poster_params)
        if params[:photos_attributes]
          params[:photos_attributes].each do |photo|
            @poster.photos.create(posterimage: photo[:posterimage])
          end
        end
        format.html { redirect_to @poster, notice: 'Poster was successfully updated.' }
        format.json { render :show, status: :ok, location: @poster }
      else
        format.html { render :edit }
        format.json { render json: @poster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posters/1
  # DELETE /posters/1.json
  def destroy
    @poster.destroy
    respond_to do |format|
      format.html { redirect_to posters_url, notice: 'Poster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poster
      @poster = Poster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poster_params
      params.require(:poster).permit(:title, :description, :price, :negotiate, category_ids:[], location_ids:[], :photos_attributes => [:posterimage])
    end
end
