class FeastsController < ApplicationController
 before_action :set_feast, only: [:show, :edit, :update, :destroy]
 before_action :set_calendar_page, only: [:new, :create, :destroy]

  # GET /feasts
  # GET /feasts.json
  def index
    @feasts = Feast.all
  end

  # GET /feasts/1
  # GET /feasts/1.json
  def show
    @calendar_page = params[:origin_calendar_page] if params[:origin_calendar_page]

    respond_to do |format|
      format.html { render layout: !request.xhr? }
    end
  end

  # GET /feasts/
  def new
    @feast = @calendar_page.feasts.build(feast_params)
    @feast.manuscript = @calendar_page.manuscript

    @feast.feast_names.build

    respond_to do |format|
      format.html { render layout: !request.xhr? }
    end
  end

  # GET /feasts/1/edit
  def edit
    @calendar_page = @feast.calendar_page

    respond_to do |format|
      format.html { render layout: !request.xhr? }
    end
  end

  # POST /feasts
  # POST /feasts.json
  def create
    @feast = @calendar_page.feasts.build(feast_params)
    respond_to do |format|
      if @feast.save
      # @calendar_page = @feast.calendar_page
        format.html { redirect_to @calendar_page, notice: 'Feast was successfully created.' }
        format.json { render :show, status: :created, location: @feast }
        format.js
      else
        format.html { render :new }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /feasts/1
  # PATCH/PUT /feasts/1.json
  def update
    respond_to do |format|
      if @feast.update(feast_params)
        @calendar_page = @feast.calendar_page
        format.html { redirect_to @feast.calendar_page, notice: 'Feast was successfully updated.' }
        format.json { render :show, status: :ok, location: @feast }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @feast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feasts/1
  # DELETE /feasts/1.json
  def destroy
    @feast.destroy
    respond_to do |format|
      format.html { redirect_to @feast.calendar_page, notice: 'This feast has ceased' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feast
      @feast = Feast.find(params[:id])
    end

  # def set_manuscript
    # @manuscript = Manuscript.find(params[:manuscript_id])
  # end

    def set_calendar_page
      @calendar_page = CalendarPage.find(params[:calendar_page_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feast_params
      params.require(:feast).permit(

        :feast_people,

        :transcription,
        :saint_name,
        :saint_attributes,
        :saint_location,
        :modifier,
        :shading,
        :color,
        :month_number,
        :day_number,
        :calendar_page_id,
        :manuscript_id,
        feast_names_attributes: [:id, :name_id, :other_name, :saint_location, :_destroy, saint_attributes: [] ]
      )
    end
end




